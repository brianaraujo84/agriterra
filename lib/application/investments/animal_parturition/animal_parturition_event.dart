part of 'animal_parturition_bloc.dart';

@freezed
abstract class AnimalParturitionEvent with _$AnimalParturitionEvent {
  // In this part we can add the non nullable feature in dart
  const factory AnimalParturitionEvent.initialized(
    Option<Parturition> initialOption,
  ) = _Initialized;

  const factory AnimalParturitionEvent.save({
    int productTemplateId,
    Parturition parturition,
  }) = _Save;

  const factory AnimalParturitionEvent.delete({int parturitionId}) = _Delete;

  const factory AnimalParturitionEvent.loadParturitions({
    int productId,
  }) = _LoadParturitions;

  const factory AnimalParturitionEvent.expandList({
    bool expand,
  }) = _ExpandList;
}
