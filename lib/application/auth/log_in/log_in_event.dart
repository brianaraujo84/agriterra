part of 'log_in_bloc.dart';

@freezed
abstract class LogInEvent with _$LogInEvent {
  const factory LogInEvent.logInWithUserAndPassword({
    @required String user,
    @required String password,
  }) = LogInWithUserAndPassword;

  const factory LogInEvent.registerUserPressed({
    @required String userName,
    @required String ci,
    @required String farmName,
    @required String birthDate,
    @required String phone,
    @required String zone,
    @required String tachoNumber,
  }) = RegisterUserPressed;

  const factory LogInEvent.forgotPasswordPressed() = ForgotPasswordPressed;
}
