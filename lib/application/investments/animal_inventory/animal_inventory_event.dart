part of 'animal_inventory_bloc.dart';

@freezed
abstract class AnimalInventoryEvent with _$AnimalInventoryEvent {
  // In this part we can add the non nullable feature in dart
  const factory AnimalInventoryEvent.initialized(
    Option<Animal> initialOption,
  ) = _Initialized;

  const factory AnimalInventoryEvent.startEditing() = _StartEditing;

  const factory AnimalInventoryEvent.save({Animal animal}) = _Save;

  const factory AnimalInventoryEvent.delete({int animalId}) = _Delete;

  const factory AnimalInventoryEvent.loadAnimals() = _LoadAnimals;

  const factory AnimalInventoryEvent.search({String searchValue}) = _Search;

  const factory AnimalInventoryEvent.stopSearching() = _StopSearching;

  const factory AnimalInventoryEvent.onChangeAnimalState({
    GeneralObject type,
  }) = _OnChangeAnimalState;
}
