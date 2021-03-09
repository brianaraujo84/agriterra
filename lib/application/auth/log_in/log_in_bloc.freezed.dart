// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'log_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LogInEventTearOff {
  const _$LogInEventTearOff();

// ignore: unused_element
  LogInWithUserAndPassword logInWithUserAndPassword(
      {@required String user, @required String password}) {
    return LogInWithUserAndPassword(
      user: user,
      password: password,
    );
  }

// ignore: unused_element
  RegisterUserPressed registerUserPressed(
      {@required String userName,
      @required String ci,
      @required String farmName,
      @required String birthDate,
      @required String phone,
      @required String zone,
      @required String tachoNumber}) {
    return RegisterUserPressed(
      userName: userName,
      ci: ci,
      farmName: farmName,
      birthDate: birthDate,
      phone: phone,
      zone: zone,
      tachoNumber: tachoNumber,
    );
  }

// ignore: unused_element
  ForgotPasswordPressed forgotPasswordPressed() {
    return const ForgotPasswordPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $LogInEvent = _$LogInEventTearOff();

/// @nodoc
mixin _$LogInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logInWithUserAndPassword(String user, String password),
    @required
        TResult registerUserPressed(String userName, String ci, String farmName,
            String birthDate, String phone, String zone, String tachoNumber),
    @required TResult forgotPasswordPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logInWithUserAndPassword(String user, String password),
    TResult registerUserPressed(String userName, String ci, String farmName,
        String birthDate, String phone, String zone, String tachoNumber),
    TResult forgotPasswordPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logInWithUserAndPassword(LogInWithUserAndPassword value),
    @required TResult registerUserPressed(RegisterUserPressed value),
    @required TResult forgotPasswordPressed(ForgotPasswordPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logInWithUserAndPassword(LogInWithUserAndPassword value),
    TResult registerUserPressed(RegisterUserPressed value),
    TResult forgotPasswordPressed(ForgotPasswordPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LogInEventCopyWith<$Res> {
  factory $LogInEventCopyWith(
          LogInEvent value, $Res Function(LogInEvent) then) =
      _$LogInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInEventCopyWithImpl<$Res> implements $LogInEventCopyWith<$Res> {
  _$LogInEventCopyWithImpl(this._value, this._then);

  final LogInEvent _value;
  // ignore: unused_field
  final $Res Function(LogInEvent) _then;
}

/// @nodoc
abstract class $LogInWithUserAndPasswordCopyWith<$Res> {
  factory $LogInWithUserAndPasswordCopyWith(LogInWithUserAndPassword value,
          $Res Function(LogInWithUserAndPassword) then) =
      _$LogInWithUserAndPasswordCopyWithImpl<$Res>;
  $Res call({String user, String password});
}

/// @nodoc
class _$LogInWithUserAndPasswordCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements $LogInWithUserAndPasswordCopyWith<$Res> {
  _$LogInWithUserAndPasswordCopyWithImpl(LogInWithUserAndPassword _value,
      $Res Function(LogInWithUserAndPassword) _then)
      : super(_value, (v) => _then(v as LogInWithUserAndPassword));

  @override
  LogInWithUserAndPassword get _value =>
      super._value as LogInWithUserAndPassword;

  @override
  $Res call({
    Object user = freezed,
    Object password = freezed,
  }) {
    return _then(LogInWithUserAndPassword(
      user: user == freezed ? _value.user : user as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$LogInWithUserAndPassword implements LogInWithUserAndPassword {
  const _$LogInWithUserAndPassword(
      {@required this.user, @required this.password})
      : assert(user != null),
        assert(password != null);

  @override
  final String user;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInEvent.logInWithUserAndPassword(user: $user, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LogInWithUserAndPassword &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(password);

  @override
  $LogInWithUserAndPasswordCopyWith<LogInWithUserAndPassword> get copyWith =>
      _$LogInWithUserAndPasswordCopyWithImpl<LogInWithUserAndPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logInWithUserAndPassword(String user, String password),
    @required
        TResult registerUserPressed(String userName, String ci, String farmName,
            String birthDate, String phone, String zone, String tachoNumber),
    @required TResult forgotPasswordPressed(),
  }) {
    assert(logInWithUserAndPassword != null);
    assert(registerUserPressed != null);
    assert(forgotPasswordPressed != null);
    return logInWithUserAndPassword(user, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logInWithUserAndPassword(String user, String password),
    TResult registerUserPressed(String userName, String ci, String farmName,
        String birthDate, String phone, String zone, String tachoNumber),
    TResult forgotPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logInWithUserAndPassword != null) {
      return logInWithUserAndPassword(user, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logInWithUserAndPassword(LogInWithUserAndPassword value),
    @required TResult registerUserPressed(RegisterUserPressed value),
    @required TResult forgotPasswordPressed(ForgotPasswordPressed value),
  }) {
    assert(logInWithUserAndPassword != null);
    assert(registerUserPressed != null);
    assert(forgotPasswordPressed != null);
    return logInWithUserAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logInWithUserAndPassword(LogInWithUserAndPassword value),
    TResult registerUserPressed(RegisterUserPressed value),
    TResult forgotPasswordPressed(ForgotPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logInWithUserAndPassword != null) {
      return logInWithUserAndPassword(this);
    }
    return orElse();
  }
}

abstract class LogInWithUserAndPassword implements LogInEvent {
  const factory LogInWithUserAndPassword(
      {@required String user,
      @required String password}) = _$LogInWithUserAndPassword;

  String get user;
  String get password;
  $LogInWithUserAndPasswordCopyWith<LogInWithUserAndPassword> get copyWith;
}

/// @nodoc
abstract class $RegisterUserPressedCopyWith<$Res> {
  factory $RegisterUserPressedCopyWith(
          RegisterUserPressed value, $Res Function(RegisterUserPressed) then) =
      _$RegisterUserPressedCopyWithImpl<$Res>;
  $Res call(
      {String userName,
      String ci,
      String farmName,
      String birthDate,
      String phone,
      String zone,
      String tachoNumber});
}

/// @nodoc
class _$RegisterUserPressedCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements $RegisterUserPressedCopyWith<$Res> {
  _$RegisterUserPressedCopyWithImpl(
      RegisterUserPressed _value, $Res Function(RegisterUserPressed) _then)
      : super(_value, (v) => _then(v as RegisterUserPressed));

  @override
  RegisterUserPressed get _value => super._value as RegisterUserPressed;

  @override
  $Res call({
    Object userName = freezed,
    Object ci = freezed,
    Object farmName = freezed,
    Object birthDate = freezed,
    Object phone = freezed,
    Object zone = freezed,
    Object tachoNumber = freezed,
  }) {
    return _then(RegisterUserPressed(
      userName: userName == freezed ? _value.userName : userName as String,
      ci: ci == freezed ? _value.ci : ci as String,
      farmName: farmName == freezed ? _value.farmName : farmName as String,
      birthDate: birthDate == freezed ? _value.birthDate : birthDate as String,
      phone: phone == freezed ? _value.phone : phone as String,
      zone: zone == freezed ? _value.zone : zone as String,
      tachoNumber:
          tachoNumber == freezed ? _value.tachoNumber : tachoNumber as String,
    ));
  }
}

/// @nodoc
class _$RegisterUserPressed implements RegisterUserPressed {
  const _$RegisterUserPressed(
      {@required this.userName,
      @required this.ci,
      @required this.farmName,
      @required this.birthDate,
      @required this.phone,
      @required this.zone,
      @required this.tachoNumber})
      : assert(userName != null),
        assert(ci != null),
        assert(farmName != null),
        assert(birthDate != null),
        assert(phone != null),
        assert(zone != null),
        assert(tachoNumber != null);

  @override
  final String userName;
  @override
  final String ci;
  @override
  final String farmName;
  @override
  final String birthDate;
  @override
  final String phone;
  @override
  final String zone;
  @override
  final String tachoNumber;

  @override
  String toString() {
    return 'LogInEvent.registerUserPressed(userName: $userName, ci: $ci, farmName: $farmName, birthDate: $birthDate, phone: $phone, zone: $zone, tachoNumber: $tachoNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterUserPressed &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.farmName, farmName) ||
                const DeepCollectionEquality()
                    .equals(other.farmName, farmName)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.zone, zone) ||
                const DeepCollectionEquality().equals(other.zone, zone)) &&
            (identical(other.tachoNumber, tachoNumber) ||
                const DeepCollectionEquality()
                    .equals(other.tachoNumber, tachoNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(farmName) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(zone) ^
      const DeepCollectionEquality().hash(tachoNumber);

  @override
  $RegisterUserPressedCopyWith<RegisterUserPressed> get copyWith =>
      _$RegisterUserPressedCopyWithImpl<RegisterUserPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logInWithUserAndPassword(String user, String password),
    @required
        TResult registerUserPressed(String userName, String ci, String farmName,
            String birthDate, String phone, String zone, String tachoNumber),
    @required TResult forgotPasswordPressed(),
  }) {
    assert(logInWithUserAndPassword != null);
    assert(registerUserPressed != null);
    assert(forgotPasswordPressed != null);
    return registerUserPressed(
        userName, ci, farmName, birthDate, phone, zone, tachoNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logInWithUserAndPassword(String user, String password),
    TResult registerUserPressed(String userName, String ci, String farmName,
        String birthDate, String phone, String zone, String tachoNumber),
    TResult forgotPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerUserPressed != null) {
      return registerUserPressed(
          userName, ci, farmName, birthDate, phone, zone, tachoNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logInWithUserAndPassword(LogInWithUserAndPassword value),
    @required TResult registerUserPressed(RegisterUserPressed value),
    @required TResult forgotPasswordPressed(ForgotPasswordPressed value),
  }) {
    assert(logInWithUserAndPassword != null);
    assert(registerUserPressed != null);
    assert(forgotPasswordPressed != null);
    return registerUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logInWithUserAndPassword(LogInWithUserAndPassword value),
    TResult registerUserPressed(RegisterUserPressed value),
    TResult forgotPasswordPressed(ForgotPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerUserPressed != null) {
      return registerUserPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterUserPressed implements LogInEvent {
  const factory RegisterUserPressed(
      {@required String userName,
      @required String ci,
      @required String farmName,
      @required String birthDate,
      @required String phone,
      @required String zone,
      @required String tachoNumber}) = _$RegisterUserPressed;

  String get userName;
  String get ci;
  String get farmName;
  String get birthDate;
  String get phone;
  String get zone;
  String get tachoNumber;
  $RegisterUserPressedCopyWith<RegisterUserPressed> get copyWith;
}

/// @nodoc
abstract class $ForgotPasswordPressedCopyWith<$Res> {
  factory $ForgotPasswordPressedCopyWith(ForgotPasswordPressed value,
          $Res Function(ForgotPasswordPressed) then) =
      _$ForgotPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordPressedCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements $ForgotPasswordPressedCopyWith<$Res> {
  _$ForgotPasswordPressedCopyWithImpl(
      ForgotPasswordPressed _value, $Res Function(ForgotPasswordPressed) _then)
      : super(_value, (v) => _then(v as ForgotPasswordPressed));

  @override
  ForgotPasswordPressed get _value => super._value as ForgotPasswordPressed;
}

/// @nodoc
class _$ForgotPasswordPressed implements ForgotPasswordPressed {
  const _$ForgotPasswordPressed();

  @override
  String toString() {
    return 'LogInEvent.forgotPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ForgotPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logInWithUserAndPassword(String user, String password),
    @required
        TResult registerUserPressed(String userName, String ci, String farmName,
            String birthDate, String phone, String zone, String tachoNumber),
    @required TResult forgotPasswordPressed(),
  }) {
    assert(logInWithUserAndPassword != null);
    assert(registerUserPressed != null);
    assert(forgotPasswordPressed != null);
    return forgotPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logInWithUserAndPassword(String user, String password),
    TResult registerUserPressed(String userName, String ci, String farmName,
        String birthDate, String phone, String zone, String tachoNumber),
    TResult forgotPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (forgotPasswordPressed != null) {
      return forgotPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logInWithUserAndPassword(LogInWithUserAndPassword value),
    @required TResult registerUserPressed(RegisterUserPressed value),
    @required TResult forgotPasswordPressed(ForgotPasswordPressed value),
  }) {
    assert(logInWithUserAndPassword != null);
    assert(registerUserPressed != null);
    assert(forgotPasswordPressed != null);
    return forgotPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logInWithUserAndPassword(LogInWithUserAndPassword value),
    TResult registerUserPressed(RegisterUserPressed value),
    TResult forgotPasswordPressed(ForgotPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (forgotPasswordPressed != null) {
      return forgotPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordPressed implements LogInEvent {
  const factory ForgotPasswordPressed() = _$ForgotPasswordPressed;
}

/// @nodoc
class _$LogInStateTearOff {
  const _$LogInStateTearOff();

// ignore: unused_element
  _LogInState call(
      {@required
          bool isSubmitting,
      @required
          Option<Either<NetworkExceptions, Unit>> authFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, Unit>> regainPassword,
      @required
          Option<Either<NetworkExceptions, Unit>>
              registrationFailureOrSuccessOption}) {
    return _LogInState(
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      regainPassword: regainPassword,
      registrationFailureOrSuccessOption: registrationFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LogInState = _$LogInStateTearOff();

/// @nodoc
mixin _$LogInState {
  bool get isSubmitting;
  Option<Either<NetworkExceptions, Unit>> get authFailureOrSuccessOption;
  Option<Either<NetworkExceptions, Unit>> get regainPassword;
  Option<Either<NetworkExceptions, Unit>>
      get registrationFailureOrSuccessOption;

  $LogInStateCopyWith<LogInState> get copyWith;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      Option<Either<NetworkExceptions, Unit>> authFailureOrSuccessOption,
      Option<Either<NetworkExceptions, Unit>> regainPassword,
      Option<Either<NetworkExceptions, Unit>>
          registrationFailureOrSuccessOption});
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res> implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  final LogInState _value;
  // ignore: unused_field
  final $Res Function(LogInState) _then;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
    Object regainPassword = freezed,
    Object registrationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Unit>>,
      regainPassword: regainPassword == freezed
          ? _value.regainPassword
          : regainPassword as Option<Either<NetworkExceptions, Unit>>,
      registrationFailureOrSuccessOption:
          registrationFailureOrSuccessOption == freezed
              ? _value.registrationFailureOrSuccessOption
              : registrationFailureOrSuccessOption
                  as Option<Either<NetworkExceptions, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$LogInStateCopyWith<$Res> implements $LogInStateCopyWith<$Res> {
  factory _$LogInStateCopyWith(
          _LogInState value, $Res Function(_LogInState) then) =
      __$LogInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      Option<Either<NetworkExceptions, Unit>> authFailureOrSuccessOption,
      Option<Either<NetworkExceptions, Unit>> regainPassword,
      Option<Either<NetworkExceptions, Unit>>
          registrationFailureOrSuccessOption});
}

/// @nodoc
class __$LogInStateCopyWithImpl<$Res> extends _$LogInStateCopyWithImpl<$Res>
    implements _$LogInStateCopyWith<$Res> {
  __$LogInStateCopyWithImpl(
      _LogInState _value, $Res Function(_LogInState) _then)
      : super(_value, (v) => _then(v as _LogInState));

  @override
  _LogInState get _value => super._value as _LogInState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
    Object regainPassword = freezed,
    Object registrationFailureOrSuccessOption = freezed,
  }) {
    return _then(_LogInState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Unit>>,
      regainPassword: regainPassword == freezed
          ? _value.regainPassword
          : regainPassword as Option<Either<NetworkExceptions, Unit>>,
      registrationFailureOrSuccessOption:
          registrationFailureOrSuccessOption == freezed
              ? _value.registrationFailureOrSuccessOption
              : registrationFailureOrSuccessOption
                  as Option<Either<NetworkExceptions, Unit>>,
    ));
  }
}

/// @nodoc
class _$_LogInState implements _LogInState {
  const _$_LogInState(
      {@required this.isSubmitting,
      @required this.authFailureOrSuccessOption,
      @required this.regainPassword,
      @required this.registrationFailureOrSuccessOption})
      : assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null),
        assert(regainPassword != null),
        assert(registrationFailureOrSuccessOption != null);

  @override
  final bool isSubmitting;
  @override
  final Option<Either<NetworkExceptions, Unit>> authFailureOrSuccessOption;
  @override
  final Option<Either<NetworkExceptions, Unit>> regainPassword;
  @override
  final Option<Either<NetworkExceptions, Unit>>
      registrationFailureOrSuccessOption;

  @override
  String toString() {
    return 'LogInState(isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption, regainPassword: $regainPassword, registrationFailureOrSuccessOption: $registrationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogInState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)) &&
            (identical(other.regainPassword, regainPassword) ||
                const DeepCollectionEquality()
                    .equals(other.regainPassword, regainPassword)) &&
            (identical(other.registrationFailureOrSuccessOption,
                    registrationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.registrationFailureOrSuccessOption,
                    registrationFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(regainPassword) ^
      const DeepCollectionEquality().hash(registrationFailureOrSuccessOption);

  @override
  _$LogInStateCopyWith<_LogInState> get copyWith =>
      __$LogInStateCopyWithImpl<_LogInState>(this, _$identity);
}

abstract class _LogInState implements LogInState {
  const factory _LogInState(
      {@required
          bool isSubmitting,
      @required
          Option<Either<NetworkExceptions, Unit>> authFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, Unit>> regainPassword,
      @required
          Option<Either<NetworkExceptions, Unit>>
              registrationFailureOrSuccessOption}) = _$_LogInState;

  @override
  bool get isSubmitting;
  @override
  Option<Either<NetworkExceptions, Unit>> get authFailureOrSuccessOption;
  @override
  Option<Either<NetworkExceptions, Unit>> get regainPassword;
  @override
  Option<Either<NetworkExceptions, Unit>>
      get registrationFailureOrSuccessOption;
  @override
  _$LogInStateCopyWith<_LogInState> get copyWith;
}
