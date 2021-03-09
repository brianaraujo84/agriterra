part of 'log_in_bloc.dart';

@freezed
abstract class LogInState with _$LogInState {
  const factory LogInState({
    @required bool isSubmitting,
    @required
        Option<Either<NetworkExceptions, Unit>> authFailureOrSuccessOption,
    @required Option<Either<NetworkExceptions, Unit>> regainPassword,
    @required
        Option<Either<NetworkExceptions, Unit>>
            registrationFailureOrSuccessOption,
  }) = _LogInState;

  factory LogInState.initial() => LogInState(
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        regainPassword: none(),
        registrationFailureOrSuccessOption: none(),
      );
}

