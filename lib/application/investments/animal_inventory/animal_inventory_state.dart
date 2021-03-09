part of 'animal_inventory_bloc.dart';

@freezed
abstract class AnimalInventoryState with _$AnimalInventoryState {
  const factory AnimalInventoryState({
    @required Animal animal,
    @required List<Animal> animals,
    @required List<GeneralObject> animalStates,
    @required bool isCreating,
    @required bool isViewing,
    @required bool isEditing,
    @required bool isSaving,
    @required bool isSearching,
    @required bool isLoading,
    @required bool isDeleting,
    @required
        Option<Either<NetworkExceptions, Animal>> saveFailureOrSuccessOption,
    @required
        Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
    @required
        Option<Either<NetworkExceptions, List<Animal>>>
            getAnimalsFailureOrSuccessOption,
  }) = _AnimalInventoryState;

  factory AnimalInventoryState.initial() => AnimalInventoryState(
        animal: Animal.empty(),
        animals: [],
        animalStates: [],
        isCreating: false,
        isViewing: false,
        isSaving: false,
        isEditing: false,
        isDeleting: false,
        isLoading: false,
        isSearching: false,
        saveFailureOrSuccessOption: none(),
        deleteFailureOrSuccessOption: none(),
        getAnimalsFailureOrSuccessOption: none(),
      );
}
