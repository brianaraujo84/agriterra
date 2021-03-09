import 'dart:async';
import 'package:agriterra/domain/auth/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc({
    @required this.repository,
  }) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequest: (e) async* {
        final userLoggedIn = await repository.checkUserLoggedIn();
        yield userLoggedIn.fold(
          (l) => AuthState.unauthenticated(),
          (r) => AuthState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await repository.signOutUser();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
