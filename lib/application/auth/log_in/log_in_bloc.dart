import 'dart:async';
import 'package:agriterra/domain/auth/repositories/auth_repository.dart';
import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_bloc.freezed.dart';

part 'log_in_event.dart';

part 'log_in_state.dart';

@injectable
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  final AuthRepository repository;

  LogInBloc(
    this.repository,
  ) : super(LogInState.initial());

  @override
  Stream<LogInState> mapEventToState(
    LogInEvent event,
  ) async* {
    yield* event.map(
      logInWithUserAndPassword: (e) async* {
        Either<NetworkExceptions, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await repository.logInWithUserAndPassword(
          user: e.user,
          password: e.password,
        );

        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      registerUserPressed: (e) async* {},
      forgotPasswordPressed: (e) async* {},
    );
  }
}
