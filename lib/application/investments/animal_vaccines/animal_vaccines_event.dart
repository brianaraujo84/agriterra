part of 'animal_vaccines_bloc.dart';

@freezed
abstract class AnimalVaccinesEvent with _$AnimalVaccinesEvent {
  // In this part we can add the non nullable feature in dart
  const factory AnimalVaccinesEvent.initialized(
    Option<Vaccine> initialOption,
  ) = _Initialized;

  const factory AnimalVaccinesEvent.save({
    int productTemplateId,
    Vaccine vaccine,
  }) = _Save;

  const factory AnimalVaccinesEvent.delete({int vaccineId}) = _Delete;

  const factory AnimalVaccinesEvent.loadVaccines({
    int productId,
  }) = _LoadVaccines;

  const factory AnimalVaccinesEvent.expandList({
    bool expand,
  }) = _ExpandList;
}
