// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'animal_vaccines_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AnimalVaccinesEventTearOff {
  const _$AnimalVaccinesEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Vaccine> initialOption) {
    return _Initialized(
      initialOption,
    );
  }

// ignore: unused_element
  _Save save({int productTemplateId, Vaccine vaccine}) {
    return _Save(
      productTemplateId: productTemplateId,
      vaccine: vaccine,
    );
  }

// ignore: unused_element
  _Delete delete({int vaccineId}) {
    return _Delete(
      vaccineId: vaccineId,
    );
  }

// ignore: unused_element
  _LoadVaccines loadVaccines({int productId}) {
    return _LoadVaccines(
      productId: productId,
    );
  }

// ignore: unused_element
  _ExpandList expandList({bool expand}) {
    return _ExpandList(
      expand: expand,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AnimalVaccinesEvent = _$AnimalVaccinesEventTearOff();

/// @nodoc
mixin _$AnimalVaccinesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Vaccine> initialOption),
    @required TResult save(int productTemplateId, Vaccine vaccine),
    @required TResult delete(int vaccineId),
    @required TResult loadVaccines(int productId),
    @required TResult expandList(bool expand),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Vaccine> initialOption),
    TResult save(int productTemplateId, Vaccine vaccine),
    TResult delete(int vaccineId),
    TResult loadVaccines(int productId),
    TResult expandList(bool expand),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadVaccines(_LoadVaccines value),
    @required TResult expandList(_ExpandList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadVaccines(_LoadVaccines value),
    TResult expandList(_ExpandList value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AnimalVaccinesEventCopyWith<$Res> {
  factory $AnimalVaccinesEventCopyWith(
          AnimalVaccinesEvent value, $Res Function(AnimalVaccinesEvent) then) =
      _$AnimalVaccinesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnimalVaccinesEventCopyWithImpl<$Res>
    implements $AnimalVaccinesEventCopyWith<$Res> {
  _$AnimalVaccinesEventCopyWithImpl(this._value, this._then);

  final AnimalVaccinesEvent _value;
  // ignore: unused_field
  final $Res Function(AnimalVaccinesEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Vaccine> initialOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$AnimalVaccinesEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialOption = freezed,
  }) {
    return _then(_Initialized(
      initialOption == freezed
          ? _value.initialOption
          : initialOption as Option<Vaccine>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOption) : assert(initialOption != null);

  @override
  final Option<Vaccine> initialOption;

  @override
  String toString() {
    return 'AnimalVaccinesEvent.initialized(initialOption: $initialOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialOption, initialOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialOption, initialOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initialOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Vaccine> initialOption),
    @required TResult save(int productTemplateId, Vaccine vaccine),
    @required TResult delete(int vaccineId),
    @required TResult loadVaccines(int productId),
    @required TResult expandList(bool expand),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadVaccines != null);
    assert(expandList != null);
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Vaccine> initialOption),
    TResult save(int productTemplateId, Vaccine vaccine),
    TResult delete(int vaccineId),
    TResult loadVaccines(int productId),
    TResult expandList(bool expand),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadVaccines(_LoadVaccines value),
    @required TResult expandList(_ExpandList value),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadVaccines != null);
    assert(expandList != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadVaccines(_LoadVaccines value),
    TResult expandList(_ExpandList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AnimalVaccinesEvent {
  const factory _Initialized(Option<Vaccine> initialOption) = _$_Initialized;

  Option<Vaccine> get initialOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
  $Res call({int productTemplateId, Vaccine vaccine});
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$AnimalVaccinesEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;

  @override
  $Res call({
    Object productTemplateId = freezed,
    Object vaccine = freezed,
  }) {
    return _then(_Save(
      productTemplateId: productTemplateId == freezed
          ? _value.productTemplateId
          : productTemplateId as int,
      vaccine: vaccine == freezed ? _value.vaccine : vaccine as Vaccine,
    ));
  }
}

/// @nodoc
class _$_Save implements _Save {
  const _$_Save({this.productTemplateId, this.vaccine});

  @override
  final int productTemplateId;
  @override
  final Vaccine vaccine;

  @override
  String toString() {
    return 'AnimalVaccinesEvent.save(productTemplateId: $productTemplateId, vaccine: $vaccine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Save &&
            (identical(other.productTemplateId, productTemplateId) ||
                const DeepCollectionEquality()
                    .equals(other.productTemplateId, productTemplateId)) &&
            (identical(other.vaccine, vaccine) ||
                const DeepCollectionEquality().equals(other.vaccine, vaccine)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productTemplateId) ^
      const DeepCollectionEquality().hash(vaccine);

  @override
  _$SaveCopyWith<_Save> get copyWith =>
      __$SaveCopyWithImpl<_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Vaccine> initialOption),
    @required TResult save(int productTemplateId, Vaccine vaccine),
    @required TResult delete(int vaccineId),
    @required TResult loadVaccines(int productId),
    @required TResult expandList(bool expand),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadVaccines != null);
    assert(expandList != null);
    return save(productTemplateId, vaccine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Vaccine> initialOption),
    TResult save(int productTemplateId, Vaccine vaccine),
    TResult delete(int vaccineId),
    TResult loadVaccines(int productId),
    TResult expandList(bool expand),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(productTemplateId, vaccine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadVaccines(_LoadVaccines value),
    @required TResult expandList(_ExpandList value),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadVaccines != null);
    assert(expandList != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadVaccines(_LoadVaccines value),
    TResult expandList(_ExpandList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements AnimalVaccinesEvent {
  const factory _Save({int productTemplateId, Vaccine vaccine}) = _$_Save;

  int get productTemplateId;
  Vaccine get vaccine;
  _$SaveCopyWith<_Save> get copyWith;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({int vaccineId});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    extends _$AnimalVaccinesEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object vaccineId = freezed,
  }) {
    return _then(_Delete(
      vaccineId: vaccineId == freezed ? _value.vaccineId : vaccineId as int,
    ));
  }
}

/// @nodoc
class _$_Delete implements _Delete {
  const _$_Delete({this.vaccineId});

  @override
  final int vaccineId;

  @override
  String toString() {
    return 'AnimalVaccinesEvent.delete(vaccineId: $vaccineId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.vaccineId, vaccineId) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineId, vaccineId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vaccineId);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Vaccine> initialOption),
    @required TResult save(int productTemplateId, Vaccine vaccine),
    @required TResult delete(int vaccineId),
    @required TResult loadVaccines(int productId),
    @required TResult expandList(bool expand),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadVaccines != null);
    assert(expandList != null);
    return delete(vaccineId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Vaccine> initialOption),
    TResult save(int productTemplateId, Vaccine vaccine),
    TResult delete(int vaccineId),
    TResult loadVaccines(int productId),
    TResult expandList(bool expand),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(vaccineId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadVaccines(_LoadVaccines value),
    @required TResult expandList(_ExpandList value),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadVaccines != null);
    assert(expandList != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadVaccines(_LoadVaccines value),
    TResult expandList(_ExpandList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements AnimalVaccinesEvent {
  const factory _Delete({int vaccineId}) = _$_Delete;

  int get vaccineId;
  _$DeleteCopyWith<_Delete> get copyWith;
}

/// @nodoc
abstract class _$LoadVaccinesCopyWith<$Res> {
  factory _$LoadVaccinesCopyWith(
          _LoadVaccines value, $Res Function(_LoadVaccines) then) =
      __$LoadVaccinesCopyWithImpl<$Res>;
  $Res call({int productId});
}

/// @nodoc
class __$LoadVaccinesCopyWithImpl<$Res>
    extends _$AnimalVaccinesEventCopyWithImpl<$Res>
    implements _$LoadVaccinesCopyWith<$Res> {
  __$LoadVaccinesCopyWithImpl(
      _LoadVaccines _value, $Res Function(_LoadVaccines) _then)
      : super(_value, (v) => _then(v as _LoadVaccines));

  @override
  _LoadVaccines get _value => super._value as _LoadVaccines;

  @override
  $Res call({
    Object productId = freezed,
  }) {
    return _then(_LoadVaccines(
      productId: productId == freezed ? _value.productId : productId as int,
    ));
  }
}

/// @nodoc
class _$_LoadVaccines implements _LoadVaccines {
  const _$_LoadVaccines({this.productId});

  @override
  final int productId;

  @override
  String toString() {
    return 'AnimalVaccinesEvent.loadVaccines(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadVaccines &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @override
  _$LoadVaccinesCopyWith<_LoadVaccines> get copyWith =>
      __$LoadVaccinesCopyWithImpl<_LoadVaccines>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Vaccine> initialOption),
    @required TResult save(int productTemplateId, Vaccine vaccine),
    @required TResult delete(int vaccineId),
    @required TResult loadVaccines(int productId),
    @required TResult expandList(bool expand),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadVaccines != null);
    assert(expandList != null);
    return loadVaccines(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Vaccine> initialOption),
    TResult save(int productTemplateId, Vaccine vaccine),
    TResult delete(int vaccineId),
    TResult loadVaccines(int productId),
    TResult expandList(bool expand),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadVaccines != null) {
      return loadVaccines(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadVaccines(_LoadVaccines value),
    @required TResult expandList(_ExpandList value),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadVaccines != null);
    assert(expandList != null);
    return loadVaccines(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadVaccines(_LoadVaccines value),
    TResult expandList(_ExpandList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadVaccines != null) {
      return loadVaccines(this);
    }
    return orElse();
  }
}

abstract class _LoadVaccines implements AnimalVaccinesEvent {
  const factory _LoadVaccines({int productId}) = _$_LoadVaccines;

  int get productId;
  _$LoadVaccinesCopyWith<_LoadVaccines> get copyWith;
}

/// @nodoc
abstract class _$ExpandListCopyWith<$Res> {
  factory _$ExpandListCopyWith(
          _ExpandList value, $Res Function(_ExpandList) then) =
      __$ExpandListCopyWithImpl<$Res>;
  $Res call({bool expand});
}

/// @nodoc
class __$ExpandListCopyWithImpl<$Res>
    extends _$AnimalVaccinesEventCopyWithImpl<$Res>
    implements _$ExpandListCopyWith<$Res> {
  __$ExpandListCopyWithImpl(
      _ExpandList _value, $Res Function(_ExpandList) _then)
      : super(_value, (v) => _then(v as _ExpandList));

  @override
  _ExpandList get _value => super._value as _ExpandList;

  @override
  $Res call({
    Object expand = freezed,
  }) {
    return _then(_ExpandList(
      expand: expand == freezed ? _value.expand : expand as bool,
    ));
  }
}

/// @nodoc
class _$_ExpandList implements _ExpandList {
  const _$_ExpandList({this.expand});

  @override
  final bool expand;

  @override
  String toString() {
    return 'AnimalVaccinesEvent.expandList(expand: $expand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExpandList &&
            (identical(other.expand, expand) ||
                const DeepCollectionEquality().equals(other.expand, expand)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(expand);

  @override
  _$ExpandListCopyWith<_ExpandList> get copyWith =>
      __$ExpandListCopyWithImpl<_ExpandList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Vaccine> initialOption),
    @required TResult save(int productTemplateId, Vaccine vaccine),
    @required TResult delete(int vaccineId),
    @required TResult loadVaccines(int productId),
    @required TResult expandList(bool expand),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadVaccines != null);
    assert(expandList != null);
    return expandList(expand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Vaccine> initialOption),
    TResult save(int productTemplateId, Vaccine vaccine),
    TResult delete(int vaccineId),
    TResult loadVaccines(int productId),
    TResult expandList(bool expand),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (expandList != null) {
      return expandList(expand);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadVaccines(_LoadVaccines value),
    @required TResult expandList(_ExpandList value),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadVaccines != null);
    assert(expandList != null);
    return expandList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadVaccines(_LoadVaccines value),
    TResult expandList(_ExpandList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (expandList != null) {
      return expandList(this);
    }
    return orElse();
  }
}

abstract class _ExpandList implements AnimalVaccinesEvent {
  const factory _ExpandList({bool expand}) = _$_ExpandList;

  bool get expand;
  _$ExpandListCopyWith<_ExpandList> get copyWith;
}

/// @nodoc
class _$AnimalVaccinesStateTearOff {
  const _$AnimalVaccinesStateTearOff();

// ignore: unused_element
  _AnimalVaccinesState call(
      {@required
          Vaccine vaccine,
      @required
          List<Vaccine> vaccines,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool isProcessing,
      @required
          bool isExpanded,
      @required
          Option<Either<NetworkExceptions, Vaccine>> saveFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, List<Vaccine>>>
              getVaccinesFailureOrSuccessOption}) {
    return _AnimalVaccinesState(
      vaccine: vaccine,
      vaccines: vaccines,
      isEditing: isEditing,
      isSaving: isSaving,
      isProcessing: isProcessing,
      isExpanded: isExpanded,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption,
      getVaccinesFailureOrSuccessOption: getVaccinesFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AnimalVaccinesState = _$AnimalVaccinesStateTearOff();

/// @nodoc
mixin _$AnimalVaccinesState {
  Vaccine get vaccine;
  List<Vaccine> get vaccines;
  bool get isEditing;
  bool get isSaving;
  bool get isProcessing;
  bool get isExpanded;
  Option<Either<NetworkExceptions, Vaccine>> get saveFailureOrSuccessOption;
  Option<Either<NetworkExceptions, Unit>> get deleteFailureOrSuccessOption;
  Option<Either<NetworkExceptions, List<Vaccine>>>
      get getVaccinesFailureOrSuccessOption;

  $AnimalVaccinesStateCopyWith<AnimalVaccinesState> get copyWith;
}

/// @nodoc
abstract class $AnimalVaccinesStateCopyWith<$Res> {
  factory $AnimalVaccinesStateCopyWith(
          AnimalVaccinesState value, $Res Function(AnimalVaccinesState) then) =
      _$AnimalVaccinesStateCopyWithImpl<$Res>;
  $Res call(
      {Vaccine vaccine,
      List<Vaccine> vaccines,
      bool isEditing,
      bool isSaving,
      bool isProcessing,
      bool isExpanded,
      Option<Either<NetworkExceptions, Vaccine>> saveFailureOrSuccessOption,
      Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      Option<Either<NetworkExceptions, List<Vaccine>>>
          getVaccinesFailureOrSuccessOption});
}

/// @nodoc
class _$AnimalVaccinesStateCopyWithImpl<$Res>
    implements $AnimalVaccinesStateCopyWith<$Res> {
  _$AnimalVaccinesStateCopyWithImpl(this._value, this._then);

  final AnimalVaccinesState _value;
  // ignore: unused_field
  final $Res Function(AnimalVaccinesState) _then;

  @override
  $Res call({
    Object vaccine = freezed,
    Object vaccines = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object isProcessing = freezed,
    Object isExpanded = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
    Object getVaccinesFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      vaccine: vaccine == freezed ? _value.vaccine : vaccine as Vaccine,
      vaccines:
          vaccines == freezed ? _value.vaccines : vaccines as List<Vaccine>,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isProcessing:
          isProcessing == freezed ? _value.isProcessing : isProcessing as bool,
      isExpanded:
          isExpanded == freezed ? _value.isExpanded : isExpanded as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Vaccine>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Unit>>,
      getVaccinesFailureOrSuccessOption:
          getVaccinesFailureOrSuccessOption == freezed
              ? _value.getVaccinesFailureOrSuccessOption
              : getVaccinesFailureOrSuccessOption
                  as Option<Either<NetworkExceptions, List<Vaccine>>>,
    ));
  }
}

/// @nodoc
abstract class _$AnimalVaccinesStateCopyWith<$Res>
    implements $AnimalVaccinesStateCopyWith<$Res> {
  factory _$AnimalVaccinesStateCopyWith(_AnimalVaccinesState value,
          $Res Function(_AnimalVaccinesState) then) =
      __$AnimalVaccinesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Vaccine vaccine,
      List<Vaccine> vaccines,
      bool isEditing,
      bool isSaving,
      bool isProcessing,
      bool isExpanded,
      Option<Either<NetworkExceptions, Vaccine>> saveFailureOrSuccessOption,
      Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      Option<Either<NetworkExceptions, List<Vaccine>>>
          getVaccinesFailureOrSuccessOption});
}

/// @nodoc
class __$AnimalVaccinesStateCopyWithImpl<$Res>
    extends _$AnimalVaccinesStateCopyWithImpl<$Res>
    implements _$AnimalVaccinesStateCopyWith<$Res> {
  __$AnimalVaccinesStateCopyWithImpl(
      _AnimalVaccinesState _value, $Res Function(_AnimalVaccinesState) _then)
      : super(_value, (v) => _then(v as _AnimalVaccinesState));

  @override
  _AnimalVaccinesState get _value => super._value as _AnimalVaccinesState;

  @override
  $Res call({
    Object vaccine = freezed,
    Object vaccines = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object isProcessing = freezed,
    Object isExpanded = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
    Object getVaccinesFailureOrSuccessOption = freezed,
  }) {
    return _then(_AnimalVaccinesState(
      vaccine: vaccine == freezed ? _value.vaccine : vaccine as Vaccine,
      vaccines:
          vaccines == freezed ? _value.vaccines : vaccines as List<Vaccine>,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isProcessing:
          isProcessing == freezed ? _value.isProcessing : isProcessing as bool,
      isExpanded:
          isExpanded == freezed ? _value.isExpanded : isExpanded as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Vaccine>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Unit>>,
      getVaccinesFailureOrSuccessOption:
          getVaccinesFailureOrSuccessOption == freezed
              ? _value.getVaccinesFailureOrSuccessOption
              : getVaccinesFailureOrSuccessOption
                  as Option<Either<NetworkExceptions, List<Vaccine>>>,
    ));
  }
}

/// @nodoc
class _$_AnimalVaccinesState implements _AnimalVaccinesState {
  const _$_AnimalVaccinesState(
      {@required this.vaccine,
      @required this.vaccines,
      @required this.isEditing,
      @required this.isSaving,
      @required this.isProcessing,
      @required this.isExpanded,
      @required this.saveFailureOrSuccessOption,
      @required this.deleteFailureOrSuccessOption,
      @required this.getVaccinesFailureOrSuccessOption})
      : assert(vaccine != null),
        assert(vaccines != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(isProcessing != null),
        assert(isExpanded != null),
        assert(saveFailureOrSuccessOption != null),
        assert(deleteFailureOrSuccessOption != null),
        assert(getVaccinesFailureOrSuccessOption != null);

  @override
  final Vaccine vaccine;
  @override
  final List<Vaccine> vaccines;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final bool isProcessing;
  @override
  final bool isExpanded;
  @override
  final Option<Either<NetworkExceptions, Vaccine>> saveFailureOrSuccessOption;
  @override
  final Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption;
  @override
  final Option<Either<NetworkExceptions, List<Vaccine>>>
      getVaccinesFailureOrSuccessOption;

  @override
  String toString() {
    return 'AnimalVaccinesState(vaccine: $vaccine, vaccines: $vaccines, isEditing: $isEditing, isSaving: $isSaving, isProcessing: $isProcessing, isExpanded: $isExpanded, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption, getVaccinesFailureOrSuccessOption: $getVaccinesFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnimalVaccinesState &&
            (identical(other.vaccine, vaccine) ||
                const DeepCollectionEquality()
                    .equals(other.vaccine, vaccine)) &&
            (identical(other.vaccines, vaccines) ||
                const DeepCollectionEquality()
                    .equals(other.vaccines, vaccines)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isProcessing, isProcessing) ||
                const DeepCollectionEquality()
                    .equals(other.isProcessing, isProcessing)) &&
            (identical(other.isExpanded, isExpanded) ||
                const DeepCollectionEquality()
                    .equals(other.isExpanded, isExpanded)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption)) &&
            (identical(other.getVaccinesFailureOrSuccessOption,
                    getVaccinesFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.getVaccinesFailureOrSuccessOption,
                    getVaccinesFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vaccine) ^
      const DeepCollectionEquality().hash(vaccines) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isProcessing) ^
      const DeepCollectionEquality().hash(isExpanded) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(deleteFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(getVaccinesFailureOrSuccessOption);

  @override
  _$AnimalVaccinesStateCopyWith<_AnimalVaccinesState> get copyWith =>
      __$AnimalVaccinesStateCopyWithImpl<_AnimalVaccinesState>(
          this, _$identity);
}

abstract class _AnimalVaccinesState implements AnimalVaccinesState {
  const factory _AnimalVaccinesState(
      {@required
          Vaccine vaccine,
      @required
          List<Vaccine> vaccines,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool isProcessing,
      @required
          bool isExpanded,
      @required
          Option<Either<NetworkExceptions, Vaccine>> saveFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, List<Vaccine>>>
              getVaccinesFailureOrSuccessOption}) = _$_AnimalVaccinesState;

  @override
  Vaccine get vaccine;
  @override
  List<Vaccine> get vaccines;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  bool get isProcessing;
  @override
  bool get isExpanded;
  @override
  Option<Either<NetworkExceptions, Vaccine>> get saveFailureOrSuccessOption;
  @override
  Option<Either<NetworkExceptions, Unit>> get deleteFailureOrSuccessOption;
  @override
  Option<Either<NetworkExceptions, List<Vaccine>>>
      get getVaccinesFailureOrSuccessOption;
  @override
  _$AnimalVaccinesStateCopyWith<_AnimalVaccinesState> get copyWith;
}
