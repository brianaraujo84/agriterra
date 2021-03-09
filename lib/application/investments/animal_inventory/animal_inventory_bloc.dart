import 'dart:async';

import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/domain/investments/entities/animal.dart';
import 'package:agriterra/domain/investments/entities/general_object.dart';
import 'package:agriterra/domain/investments/repositories/investments_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'animal_inventory_event.dart';

part 'animal_inventory_state.dart';

part 'animal_inventory_bloc.freezed.dart';

@injectable
class AnimalInventoryBloc
    extends Bloc<AnimalInventoryEvent, AnimalInventoryState> {
  final InvestmentsRepository repository;
  List<Animal> helperAnimalList;

  AnimalInventoryBloc(this.repository) : super(AnimalInventoryState.initial());

  @override
  Stream<AnimalInventoryState> mapEventToState(
    AnimalInventoryEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialOption.fold(
          () => state.copyWith(
            isLoading: true,
            isCreating: true,
          ),
          (initialValue) => state.copyWith(
            isLoading: true,
            animal: initialValue,
            isViewing: true,
          ),
        );

        Either<NetworkExceptions, List<GeneralObject>> failureOrSuccess;
        failureOrSuccess = await repository.getAnimalCategories();

        yield state.copyWith(
          animalStates: failureOrSuccess.getOrElse(() => []),
          isLoading: false,
        );
      },
      save: (e) async* {
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
          deleteFailureOrSuccessOption: none(),
        );

        Either<NetworkExceptions, Animal> failureOrSuccess;

        final newAnimal = e.animal;
        newAnimal.estadoAnimalId = state.animal.estadoAnimalId;
        if (state.isEditing) {
          newAnimal.id = state.animal.id;
          failureOrSuccess = await repository.updateAnimal(
            animal: newAnimal,
          );
        } else {
          failureOrSuccess = await repository.createAnimal(animal: newAnimal);
        }

        yield state.copyWith(
          isSaving: false,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      delete: (e) async* {
        yield state.copyWith(
          isDeleting: true,
          saveFailureOrSuccessOption: none(),
          deleteFailureOrSuccessOption: none(),
        );

        Either<NetworkExceptions, Unit> failureOrSuccess;

        failureOrSuccess = await repository.deleteAnimal(animalId: e.animalId);

        yield state.copyWith(
          isDeleting: false,
          deleteFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      loadAnimals: (e) async* {
        yield state.copyWith(
          isLoading: true,
          getAnimalsFailureOrSuccessOption: none(),
        );

        Either<NetworkExceptions, List<Animal>> failureOrSuccess;
        failureOrSuccess = await repository.getAnimalInventoryByCompany();

        // Will use this list for the search functionality
        helperAnimalList = failureOrSuccess.getOrElse(() => []);

        yield state.copyWith(
          isLoading: false,
          animals: failureOrSuccess.getOrElse(() => []),
          getAnimalsFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      onChangeAnimalState: (e) async* {
        final animal = state.animal;
        animal.estadoAnimalId = e.type;

        yield state.copyWith(animal: animal);
      },
      startEditing: (e) async* {
        yield state.copyWith(
          isViewing: false,
          isEditing: true,
        );
      },
      search: (e) async* {
        final searchList = helperAnimalList
            .where(
              (animal) => animal.name
                  .toLowerCase()
                  .contains(e.searchValue.toLowerCase()),
            )
            .toList();

        yield state.copyWith(
          isSearching: true,
          animals: searchList,
        );
      },
      stopSearching: (e) async* {
        yield state.copyWith(
          isSearching: false,
          animals: helperAnimalList,
        );
      },
    );
  }
}
