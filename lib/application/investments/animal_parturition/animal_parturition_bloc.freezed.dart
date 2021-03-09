// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'animal_parturition_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AnimalParturitionEventTearOff {
  const _$AnimalParturitionEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Parturition> initialOption) {
    return _Initialized(
      initialOption,
    );
  }

// ignore: unused_element
  _Save save({int productTemplateId, Parturition parturition}) {
    return _Save(
      productTemplateId: productTemplateId,
      parturition: parturition,
    );
  }

// ignore: unused_element
  _Delete delete({int parturitionId}) {
    return _Delete(
      parturitionId: parturitionId,
    );
  }

// ignore: unused_element
  _LoadParturitions loadParturitions({int productId}) {
    return _LoadParturitions(
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
const $AnimalParturitionEvent = _$AnimalParturitionEventTearOff();

/// @nodoc
mixin _$AnimalParturitionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Parturition> initialOption),
    @required TResult save(int productTemplateId, Parturition parturition),
    @required TResult delete(int parturitionId),
    @required TResult loadParturitions(int productId),
    @required TResult expandList(bool expand),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Parturition> initialOption),
    TResult save(int productTemplateId, Parturition parturition),
    TResult delete(int parturitionId),
    TResult loadParturitions(int productId),
    TResult expandList(bool expand),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadParturitions(_LoadParturitions value),
    @required TResult expandList(_ExpandList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadParturitions(_LoadParturitions value),
    TResult expandList(_ExpandList value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AnimalParturitionEventCopyWith<$Res> {
  factory $AnimalParturitionEventCopyWith(AnimalParturitionEvent value,
          $Res Function(AnimalParturitionEvent) then) =
      _$AnimalParturitionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnimalParturitionEventCopyWithImpl<$Res>
    implements $AnimalParturitionEventCopyWith<$Res> {
  _$AnimalParturitionEventCopyWithImpl(this._value, this._then);

  final AnimalParturitionEvent _value;
  // ignore: unused_field
  final $Res Function(AnimalParturitionEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Parturition> initialOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$AnimalParturitionEventCopyWithImpl<$Res>
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
          : initialOption as Option<Parturition>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOption) : assert(initialOption != null);

  @override
  final Option<Parturition> initialOption;

  @override
  String toString() {
    return 'AnimalParturitionEvent.initialized(initialOption: $initialOption)';
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
    @required TResult initialized(Option<Parturition> initialOption),
    @required TResult save(int productTemplateId, Parturition parturition),
    @required TResult delete(int parturitionId),
    @required TResult loadParturitions(int productId),
    @required TResult expandList(bool expand),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadParturitions != null);
    assert(expandList != null);
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Parturition> initialOption),
    TResult save(int productTemplateId, Parturition parturition),
    TResult delete(int parturitionId),
    TResult loadParturitions(int productId),
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
    @required TResult loadParturitions(_LoadParturitions value),
    @required TResult expandList(_ExpandList value),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadParturitions != null);
    assert(expandList != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadParturitions(_LoadParturitions value),
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

abstract class _Initialized implements AnimalParturitionEvent {
  const factory _Initialized(Option<Parturition> initialOption) =
      _$_Initialized;

  Option<Parturition> get initialOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
  $Res call({int productTemplateId, Parturition parturition});
}

/// @nodoc
class __$SaveCopyWithImpl<$Res>
    extends _$AnimalParturitionEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;

  @override
  $Res call({
    Object productTemplateId = freezed,
    Object parturition = freezed,
  }) {
    return _then(_Save(
      productTemplateId: productTemplateId == freezed
          ? _value.productTemplateId
          : productTemplateId as int,
      parturition: parturition == freezed
          ? _value.parturition
          : parturition as Parturition,
    ));
  }
}

/// @nodoc
class _$_Save implements _Save {
  const _$_Save({this.productTemplateId, this.parturition});

  @override
  final int productTemplateId;
  @override
  final Parturition parturition;

  @override
  String toString() {
    return 'AnimalParturitionEvent.save(productTemplateId: $productTemplateId, parturition: $parturition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Save &&
            (identical(other.productTemplateId, productTemplateId) ||
                const DeepCollectionEquality()
                    .equals(other.productTemplateId, productTemplateId)) &&
            (identical(other.parturition, parturition) ||
                const DeepCollectionEquality()
                    .equals(other.parturition, parturition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productTemplateId) ^
      const DeepCollectionEquality().hash(parturition);

  @override
  _$SaveCopyWith<_Save> get copyWith =>
      __$SaveCopyWithImpl<_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Parturition> initialOption),
    @required TResult save(int productTemplateId, Parturition parturition),
    @required TResult delete(int parturitionId),
    @required TResult loadParturitions(int productId),
    @required TResult expandList(bool expand),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadParturitions != null);
    assert(expandList != null);
    return save(productTemplateId, parturition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Parturition> initialOption),
    TResult save(int productTemplateId, Parturition parturition),
    TResult delete(int parturitionId),
    TResult loadParturitions(int productId),
    TResult expandList(bool expand),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(productTemplateId, parturition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadParturitions(_LoadParturitions value),
    @required TResult expandList(_ExpandList value),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadParturitions != null);
    assert(expandList != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadParturitions(_LoadParturitions value),
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

abstract class _Save implements AnimalParturitionEvent {
  const factory _Save({int productTemplateId, Parturition parturition}) =
      _$_Save;

  int get productTemplateId;
  Parturition get parturition;
  _$SaveCopyWith<_Save> get copyWith;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({int parturitionId});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    extends _$AnimalParturitionEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object parturitionId = freezed,
  }) {
    return _then(_Delete(
      parturitionId: parturitionId == freezed
          ? _value.parturitionId
          : parturitionId as int,
    ));
  }
}

/// @nodoc
class _$_Delete implements _Delete {
  const _$_Delete({this.parturitionId});

  @override
  final int parturitionId;

  @override
  String toString() {
    return 'AnimalParturitionEvent.delete(parturitionId: $parturitionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.parturitionId, parturitionId) ||
                const DeepCollectionEquality()
                    .equals(other.parturitionId, parturitionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parturitionId);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Parturition> initialOption),
    @required TResult save(int productTemplateId, Parturition parturition),
    @required TResult delete(int parturitionId),
    @required TResult loadParturitions(int productId),
    @required TResult expandList(bool expand),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadParturitions != null);
    assert(expandList != null);
    return delete(parturitionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Parturition> initialOption),
    TResult save(int productTemplateId, Parturition parturition),
    TResult delete(int parturitionId),
    TResult loadParturitions(int productId),
    TResult expandList(bool expand),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(parturitionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadParturitions(_LoadParturitions value),
    @required TResult expandList(_ExpandList value),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadParturitions != null);
    assert(expandList != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadParturitions(_LoadParturitions value),
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

abstract class _Delete implements AnimalParturitionEvent {
  const factory _Delete({int parturitionId}) = _$_Delete;

  int get parturitionId;
  _$DeleteCopyWith<_Delete> get copyWith;
}

/// @nodoc
abstract class _$LoadParturitionsCopyWith<$Res> {
  factory _$LoadParturitionsCopyWith(
          _LoadParturitions value, $Res Function(_LoadParturitions) then) =
      __$LoadParturitionsCopyWithImpl<$Res>;
  $Res call({int productId});
}

/// @nodoc
class __$LoadParturitionsCopyWithImpl<$Res>
    extends _$AnimalParturitionEventCopyWithImpl<$Res>
    implements _$LoadParturitionsCopyWith<$Res> {
  __$LoadParturitionsCopyWithImpl(
      _LoadParturitions _value, $Res Function(_LoadParturitions) _then)
      : super(_value, (v) => _then(v as _LoadParturitions));

  @override
  _LoadParturitions get _value => super._value as _LoadParturitions;

  @override
  $Res call({
    Object productId = freezed,
  }) {
    return _then(_LoadParturitions(
      productId: productId == freezed ? _value.productId : productId as int,
    ));
  }
}

/// @nodoc
class _$_LoadParturitions implements _LoadParturitions {
  const _$_LoadParturitions({this.productId});

  @override
  final int productId;

  @override
  String toString() {
    return 'AnimalParturitionEvent.loadParturitions(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadParturitions &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @override
  _$LoadParturitionsCopyWith<_LoadParturitions> get copyWith =>
      __$LoadParturitionsCopyWithImpl<_LoadParturitions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Parturition> initialOption),
    @required TResult save(int productTemplateId, Parturition parturition),
    @required TResult delete(int parturitionId),
    @required TResult loadParturitions(int productId),
    @required TResult expandList(bool expand),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadParturitions != null);
    assert(expandList != null);
    return loadParturitions(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Parturition> initialOption),
    TResult save(int productTemplateId, Parturition parturition),
    TResult delete(int parturitionId),
    TResult loadParturitions(int productId),
    TResult expandList(bool expand),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadParturitions != null) {
      return loadParturitions(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadParturitions(_LoadParturitions value),
    @required TResult expandList(_ExpandList value),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadParturitions != null);
    assert(expandList != null);
    return loadParturitions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadParturitions(_LoadParturitions value),
    TResult expandList(_ExpandList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadParturitions != null) {
      return loadParturitions(this);
    }
    return orElse();
  }
}

abstract class _LoadParturitions implements AnimalParturitionEvent {
  const factory _LoadParturitions({int productId}) = _$_LoadParturitions;

  int get productId;
  _$LoadParturitionsCopyWith<_LoadParturitions> get copyWith;
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
    extends _$AnimalParturitionEventCopyWithImpl<$Res>
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
    return 'AnimalParturitionEvent.expandList(expand: $expand)';
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
    @required TResult initialized(Option<Parturition> initialOption),
    @required TResult save(int productTemplateId, Parturition parturition),
    @required TResult delete(int parturitionId),
    @required TResult loadParturitions(int productId),
    @required TResult expandList(bool expand),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadParturitions != null);
    assert(expandList != null);
    return expandList(expand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Parturition> initialOption),
    TResult save(int productTemplateId, Parturition parturition),
    TResult delete(int parturitionId),
    TResult loadParturitions(int productId),
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
    @required TResult loadParturitions(_LoadParturitions value),
    @required TResult expandList(_ExpandList value),
  }) {
    assert(initialized != null);
    assert(save != null);
    assert(delete != null);
    assert(loadParturitions != null);
    assert(expandList != null);
    return expandList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadParturitions(_LoadParturitions value),
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

abstract class _ExpandList implements AnimalParturitionEvent {
  const factory _ExpandList({bool expand}) = _$_ExpandList;

  bool get expand;
  _$ExpandListCopyWith<_ExpandList> get copyWith;
}

/// @nodoc
class _$AnimalParturitionStateTearOff {
  const _$AnimalParturitionStateTearOff();

// ignore: unused_element
  _AnimalParturitionState call(
      {@required
          Parturition parturition,
      @required
          List<Parturition> parturitions,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool isProcessing,
      @required
          bool isExpanded,
      @required
          Option<Either<NetworkExceptions, Parturition>>
              saveFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, List<Parturition>>>
              getParturitionFailureOrSuccessOption}) {
    return _AnimalParturitionState(
      parturition: parturition,
      parturitions: parturitions,
      isEditing: isEditing,
      isSaving: isSaving,
      isProcessing: isProcessing,
      isExpanded: isExpanded,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption,
      getParturitionFailureOrSuccessOption:
          getParturitionFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AnimalParturitionState = _$AnimalParturitionStateTearOff();

/// @nodoc
mixin _$AnimalParturitionState {
  Parturition get parturition;
  List<Parturition> get parturitions;
  bool get isEditing;
  bool get isSaving;
  bool get isProcessing;
  bool get isExpanded;
  Option<Either<NetworkExceptions, Parturition>> get saveFailureOrSuccessOption;
  Option<Either<NetworkExceptions, Unit>> get deleteFailureOrSuccessOption;
  Option<Either<NetworkExceptions, List<Parturition>>>
      get getParturitionFailureOrSuccessOption;

  $AnimalParturitionStateCopyWith<AnimalParturitionState> get copyWith;
}

/// @nodoc
abstract class $AnimalParturitionStateCopyWith<$Res> {
  factory $AnimalParturitionStateCopyWith(AnimalParturitionState value,
          $Res Function(AnimalParturitionState) then) =
      _$AnimalParturitionStateCopyWithImpl<$Res>;
  $Res call(
      {Parturition parturition,
      List<Parturition> parturitions,
      bool isEditing,
      bool isSaving,
      bool isProcessing,
      bool isExpanded,
      Option<Either<NetworkExceptions, Parturition>> saveFailureOrSuccessOption,
      Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      Option<Either<NetworkExceptions, List<Parturition>>>
          getParturitionFailureOrSuccessOption});
}

/// @nodoc
class _$AnimalParturitionStateCopyWithImpl<$Res>
    implements $AnimalParturitionStateCopyWith<$Res> {
  _$AnimalParturitionStateCopyWithImpl(this._value, this._then);

  final AnimalParturitionState _value;
  // ignore: unused_field
  final $Res Function(AnimalParturitionState) _then;

  @override
  $Res call({
    Object parturition = freezed,
    Object parturitions = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object isProcessing = freezed,
    Object isExpanded = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
    Object getParturitionFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      parturition: parturition == freezed
          ? _value.parturition
          : parturition as Parturition,
      parturitions: parturitions == freezed
          ? _value.parturitions
          : parturitions as List<Parturition>,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isProcessing:
          isProcessing == freezed ? _value.isProcessing : isProcessing as bool,
      isExpanded:
          isExpanded == freezed ? _value.isExpanded : isExpanded as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Parturition>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Unit>>,
      getParturitionFailureOrSuccessOption:
          getParturitionFailureOrSuccessOption == freezed
              ? _value.getParturitionFailureOrSuccessOption
              : getParturitionFailureOrSuccessOption
                  as Option<Either<NetworkExceptions, List<Parturition>>>,
    ));
  }
}

/// @nodoc
abstract class _$AnimalParturitionStateCopyWith<$Res>
    implements $AnimalParturitionStateCopyWith<$Res> {
  factory _$AnimalParturitionStateCopyWith(_AnimalParturitionState value,
          $Res Function(_AnimalParturitionState) then) =
      __$AnimalParturitionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Parturition parturition,
      List<Parturition> parturitions,
      bool isEditing,
      bool isSaving,
      bool isProcessing,
      bool isExpanded,
      Option<Either<NetworkExceptions, Parturition>> saveFailureOrSuccessOption,
      Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      Option<Either<NetworkExceptions, List<Parturition>>>
          getParturitionFailureOrSuccessOption});
}

/// @nodoc
class __$AnimalParturitionStateCopyWithImpl<$Res>
    extends _$AnimalParturitionStateCopyWithImpl<$Res>
    implements _$AnimalParturitionStateCopyWith<$Res> {
  __$AnimalParturitionStateCopyWithImpl(_AnimalParturitionState _value,
      $Res Function(_AnimalParturitionState) _then)
      : super(_value, (v) => _then(v as _AnimalParturitionState));

  @override
  _AnimalParturitionState get _value => super._value as _AnimalParturitionState;

  @override
  $Res call({
    Object parturition = freezed,
    Object parturitions = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object isProcessing = freezed,
    Object isExpanded = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
    Object getParturitionFailureOrSuccessOption = freezed,
  }) {
    return _then(_AnimalParturitionState(
      parturition: parturition == freezed
          ? _value.parturition
          : parturition as Parturition,
      parturitions: parturitions == freezed
          ? _value.parturitions
          : parturitions as List<Parturition>,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isProcessing:
          isProcessing == freezed ? _value.isProcessing : isProcessing as bool,
      isExpanded:
          isExpanded == freezed ? _value.isExpanded : isExpanded as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Parturition>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Unit>>,
      getParturitionFailureOrSuccessOption:
          getParturitionFailureOrSuccessOption == freezed
              ? _value.getParturitionFailureOrSuccessOption
              : getParturitionFailureOrSuccessOption
                  as Option<Either<NetworkExceptions, List<Parturition>>>,
    ));
  }
}

/// @nodoc
class _$_AnimalParturitionState implements _AnimalParturitionState {
  const _$_AnimalParturitionState(
      {@required this.parturition,
      @required this.parturitions,
      @required this.isEditing,
      @required this.isSaving,
      @required this.isProcessing,
      @required this.isExpanded,
      @required this.saveFailureOrSuccessOption,
      @required this.deleteFailureOrSuccessOption,
      @required this.getParturitionFailureOrSuccessOption})
      : assert(parturition != null),
        assert(parturitions != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(isProcessing != null),
        assert(isExpanded != null),
        assert(saveFailureOrSuccessOption != null),
        assert(deleteFailureOrSuccessOption != null),
        assert(getParturitionFailureOrSuccessOption != null);

  @override
  final Parturition parturition;
  @override
  final List<Parturition> parturitions;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final bool isProcessing;
  @override
  final bool isExpanded;
  @override
  final Option<Either<NetworkExceptions, Parturition>>
      saveFailureOrSuccessOption;
  @override
  final Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption;
  @override
  final Option<Either<NetworkExceptions, List<Parturition>>>
      getParturitionFailureOrSuccessOption;

  @override
  String toString() {
    return 'AnimalParturitionState(parturition: $parturition, parturitions: $parturitions, isEditing: $isEditing, isSaving: $isSaving, isProcessing: $isProcessing, isExpanded: $isExpanded, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption, getParturitionFailureOrSuccessOption: $getParturitionFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnimalParturitionState &&
            (identical(other.parturition, parturition) ||
                const DeepCollectionEquality()
                    .equals(other.parturition, parturition)) &&
            (identical(other.parturitions, parturitions) ||
                const DeepCollectionEquality()
                    .equals(other.parturitions, parturitions)) &&
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
            (identical(other.getParturitionFailureOrSuccessOption,
                    getParturitionFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.getParturitionFailureOrSuccessOption,
                    getParturitionFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(parturition) ^
      const DeepCollectionEquality().hash(parturitions) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isProcessing) ^
      const DeepCollectionEquality().hash(isExpanded) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(deleteFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(getParturitionFailureOrSuccessOption);

  @override
  _$AnimalParturitionStateCopyWith<_AnimalParturitionState> get copyWith =>
      __$AnimalParturitionStateCopyWithImpl<_AnimalParturitionState>(
          this, _$identity);
}

abstract class _AnimalParturitionState implements AnimalParturitionState {
  const factory _AnimalParturitionState(
      {@required
          Parturition parturition,
      @required
          List<Parturition> parturitions,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool isProcessing,
      @required
          bool isExpanded,
      @required
          Option<Either<NetworkExceptions, Parturition>>
              saveFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, List<Parturition>>>
              getParturitionFailureOrSuccessOption}) = _$_AnimalParturitionState;

  @override
  Parturition get parturition;
  @override
  List<Parturition> get parturitions;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  bool get isProcessing;
  @override
  bool get isExpanded;
  @override
  Option<Either<NetworkExceptions, Parturition>> get saveFailureOrSuccessOption;
  @override
  Option<Either<NetworkExceptions, Unit>> get deleteFailureOrSuccessOption;
  @override
  Option<Either<NetworkExceptions, List<Parturition>>>
      get getParturitionFailureOrSuccessOption;
  @override
  _$AnimalParturitionStateCopyWith<_AnimalParturitionState> get copyWith;
}
