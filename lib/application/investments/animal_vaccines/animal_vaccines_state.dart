part of 'animal_vaccines_bloc.dart';

@freezed
abstract class AnimalVaccinesState with _$AnimalVaccinesState {
  const factory AnimalVaccinesState({
    @required Vaccine vaccine,
    @required List<Vaccine> vaccines,
    @required bool isEditing,
    @required bool isSaving,
    @required bool isProcessing,
    @required bool isExpanded,
    @required
        Option<Either<NetworkExceptions, Vaccine>> saveFailureOrSuccessOption,
    @required
        Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
    @required
        Option<Either<NetworkExceptions, List<Vaccine>>>
            getVaccinesFailureOrSuccessOption,
  }) = _AnimalVaccinesState;

  factory AnimalVaccinesState.initial() => AnimalVaccinesState(
        vaccine: Vaccine.empty(),
        vaccines: [],
        isSaving: false,
        isEditing: false,
        isProcessing: false,
        isExpanded: false,
        saveFailureOrSuccessOption: none(),
        deleteFailureOrSuccessOption: none(),
        getVaccinesFailureOrSuccessOption: none(),
      );
}
