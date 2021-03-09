import 'dart:async';

import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/domain/investments/entities/parturition.dart';
import 'package:agriterra/domain/investments/repositories/investments_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'animal_parturition_event.dart';

part 'animal_parturition_state.dart';

part 'animal_parturition_bloc.freezed.dart';

@injectable
class AnimalParturitionBloc
    extends Bloc<AnimalParturitionEvent, AnimalParturitionState> {
  final InvestmentsRepository repository;

  AnimalParturitionBloc(this.repository)
      : super(
          AnimalParturitionState.initial(),
        );

  @override
  Stream<AnimalParturitionState> mapEventToState(
    AnimalParturitionEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialOption.fold(
          () => state,
          (initialValue) => state.copyWith(
            parturition: initialValue,
            isEditing: true,
          ),
        );
      },
      save: (e) async* {
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
          deleteFailureOrSuccessOption: none(),
        );

        Either<NetworkExceptions, Parturition> failureOrSuccess;

        final newParturition = e.parturition;

        if (state.isEditing) {
          newParturition.id = state.parturition.id;
          failureOrSuccess = await repository.updateAnimalParturition(
            productId: e.productTemplateId,
            parturition: newParturition,
          );
        } else {
          failureOrSuccess = await repository.createAnimalParturition(
            productId: e.productTemplateId,
            parturition: e.parturition,
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
          getParturitionFailureOrSuccessOption: none(),
          deleteFailureOrSuccessOption: none(),
        );

        Either<NetworkExceptions, Unit> failureOrSuccess;

        failureOrSuccess = await repository.deleteAnimalParturition(
          parturitionId: e.parturitionId,
        );

        yield state.copyWith(
          isProcessing: false,
          deleteFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      loadParturitions: (e) async* {
        yield state.copyWith(
          isProcessing: true,
          getParturitionFailureOrSuccessOption: none(),
          deleteFailureOrSuccessOption: none(),
        );

        Either<NetworkExceptions, List<Parturition>> failureOrSuccess;
        failureOrSuccess = await repository.getAnimalParturition(
          productId: e.productId,
        );

        yield state.copyWith(
          isProcessing: false,
          isExpanded: true,
          parturitions: failureOrSuccess.getOrElse(() => []),
          getParturitionFailureOrSuccessOption: optionOf(failureOrSuccess),
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
