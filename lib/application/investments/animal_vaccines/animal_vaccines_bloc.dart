import 'dart:async';

import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/domain/investments/entities/vaccine.dart';
import 'package:agriterra/domain/investments/repositories/investments_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'animal_vaccines_event.dart';

part 'animal_vaccines_state.dart';

part 'animal_vaccines_bloc.freezed.dart';

@injectable
class AnimalVaccinesBloc
    extends Bloc<AnimalVaccinesEvent, AnimalVaccinesState> {
  final InvestmentsRepository repository;

  AnimalVaccinesBloc(this.repository) : super(AnimalVaccinesState.initial());

  @override
  Stream<AnimalVaccinesState> mapEventToState(
    AnimalVaccinesEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialOption.fold(
          () => state,
          (initialValue) => state.copyWith(
            isEditing: true,
            vaccine: initialValue,
          ),
        );
      },
      save: (e) async* {
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
          deleteFailureOrSuccessOption: none(),
        );

        Either<NetworkExceptions, Vaccine> failureOrSuccess;

        final newVaccine = e.vaccine;

        if (state.isEditing) {
          newVaccine.id = state.vaccine.id;
          failureOrSuccess = await repository.updateAnimalVaccine(
            productId: e.productTemplateId,
            vaccine: newVaccine,
          );
        } else {
          failureOrSuccess = await repository.createAnimalVaccine(
            productId: e.productTemplateId,
            vaccine: e.vaccine,
          );
        }

        yield state.copyWith(
          isSaving: false,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      delete: (e) async* {
        yield state.copyWith(
          isProcessing: true,
          getVaccinesFailureOrSuccessOption: none(),
          deleteFailureOrSuccessOption: none(),
        );

        Either<NetworkExceptions, Unit> failureOrSuccess;

        failureOrSuccess = await repository.deleteAnimalVaccine(
          vaccineId: e.vaccineId,
        );

        yield state.copyWith(
          isProcessing: false,
          deleteFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      loadVaccines: (e) async* {
        yield state.copyWith(
          isProcessing: true,
          getVaccinesFailureOrSuccessOption: none(),
          deleteFailureOrSuccessOption: none(),
        );

        Either<NetworkExceptions, List<Vaccine>> failureOrSuccess;
        failureOrSuccess = await repository.getAnimalVaccines(
          productId: e.productId,
        );

        yield state.copyWith(
          isProcessing: false,
          isExpanded: true,
          vaccines: failureOrSuccess.getOrElse(() => []),
          getVaccinesFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      expandList: (e) async* {
        yield state.copyWith(
          isExpanded: e.expand,
        );
      },
    );
  }
}
