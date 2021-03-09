part of 'animal_parturition_bloc.dart';

@freezed
abstract class AnimalParturitionState with _$AnimalParturitionState {
  const factory AnimalParturitionState({
    @required Parturition parturition,
    @required List<Parturition> parturitions,
    @required bool isEditing,
    @required bool isSaving,
    @required bool isProcessing,
    @required bool isExpanded,
    @required
        Option<Either<NetworkExceptions, Parturition>>
            saveFailureOrSuccessOption,
    @required
        Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
    @required
        Option<Either<NetworkExceptions, List<Parturition>>>
            getParturitionFailureOrSuccessOption,
  }) = _AnimalParturitionState;

  factory AnimalParturitionState.initial() => AnimalParturitionState(
        parturition: Parturition.empty(),
        parturitions: [],
        isSaving: false,
        isEditing: false,
        isProcessing: false,
        isExpanded: false,
        saveFailureOrSuccessOption: none(),
        deleteFailureOrSuccessOption: none(),
        getParturitionFailureOrSuccessOption: none(),
      );
}
