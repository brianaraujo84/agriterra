// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'animal_inventory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AnimalInventoryEventTearOff {
  const _$AnimalInventoryEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Animal> initialOption) {
    return _Initialized(
      initialOption,
    );
  }

// ignore: unused_element
  _StartEditing startEditing() {
    return const _StartEditing();
  }

// ignore: unused_element
  _Save save({Animal animal}) {
    return _Save(
      animal: animal,
    );
  }

// ignore: unused_element
  _Delete delete({int animalId}) {
    return _Delete(
      animalId: animalId,
    );
  }

// ignore: unused_element
  _LoadAnimals loadAnimals() {
    return const _LoadAnimals();
  }

// ignore: unused_element
  _Search search({String searchValue}) {
    return _Search(
      searchValue: searchValue,
    );
  }

// ignore: unused_element
  _StopSearching stopSearching() {
    return const _StopSearching();
  }

// ignore: unused_element
  _OnChangeAnimalState onChangeAnimalState({GeneralObject type}) {
    return _OnChangeAnimalState(
      type: type,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AnimalInventoryEvent = _$AnimalInventoryEventTearOff();

/// @nodoc
mixin _$AnimalInventoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Animal> initialOption),
    @required TResult startEditing(),
    @required TResult save(Animal animal),
    @required TResult delete(int animalId),
    @required TResult loadAnimals(),
    @required TResult search(String searchValue),
    @required TResult stopSearching(),
    @required TResult onChangeAnimalState(GeneralObject type),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Animal> initialOption),
    TResult startEditing(),
    TResult save(Animal animal),
    TResult delete(int animalId),
    TResult loadAnimals(),
    TResult search(String searchValue),
    TResult stopSearching(),
    TResult onChangeAnimalState(GeneralObject type),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult startEditing(_StartEditing value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadAnimals(_LoadAnimals value),
    @required TResult search(_Search value),
    @required TResult stopSearching(_StopSearching value),
    @required TResult onChangeAnimalState(_OnChangeAnimalState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult startEditing(_StartEditing value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadAnimals(_LoadAnimals value),
    TResult search(_Search value),
    TResult stopSearching(_StopSearching value),
    TResult onChangeAnimalState(_OnChangeAnimalState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AnimalInventoryEventCopyWith<$Res> {
  factory $AnimalInventoryEventCopyWith(AnimalInventoryEvent value,
          $Res Function(AnimalInventoryEvent) then) =
      _$AnimalInventoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnimalInventoryEventCopyWithImpl<$Res>
    implements $AnimalInventoryEventCopyWith<$Res> {
  _$AnimalInventoryEventCopyWithImpl(this._value, this._then);

  final AnimalInventoryEvent _value;
  // ignore: unused_field
  final $Res Function(AnimalInventoryEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Animal> initialOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$AnimalInventoryEventCopyWithImpl<$Res>
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
          : initialOption as Option<Animal>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOption) : assert(initialOption != null);

  @override
  final Option<Animal> initialOption;

  @override
  String toString() {
    return 'AnimalInventoryEvent.initialized(initialOption: $initialOption)';
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
    @required TResult initialized(Option<Animal> initialOption),
    @required TResult startEditing(),
    @required TResult save(Animal animal),
    @required TResult delete(int animalId),
    @required TResult loadAnimals(),
    @required TResult search(String searchValue),
    @required TResult stopSearching(),
    @required TResult onChangeAnimalState(GeneralObject type),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Animal> initialOption),
    TResult startEditing(),
    TResult save(Animal animal),
    TResult delete(int animalId),
    TResult loadAnimals(),
    TResult search(String searchValue),
    TResult stopSearching(),
    TResult onChangeAnimalState(GeneralObject type),
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
    @required TResult startEditing(_StartEditing value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadAnimals(_LoadAnimals value),
    @required TResult search(_Search value),
    @required TResult stopSearching(_StopSearching value),
    @required TResult onChangeAnimalState(_OnChangeAnimalState value),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult startEditing(_StartEditing value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadAnimals(_LoadAnimals value),
    TResult search(_Search value),
    TResult stopSearching(_StopSearching value),
    TResult onChangeAnimalState(_OnChangeAnimalState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AnimalInventoryEvent {
  const factory _Initialized(Option<Animal> initialOption) = _$_Initialized;

  Option<Animal> get initialOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$StartEditingCopyWith<$Res> {
  factory _$StartEditingCopyWith(
          _StartEditing value, $Res Function(_StartEditing) then) =
      __$StartEditingCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartEditingCopyWithImpl<$Res>
    extends _$AnimalInventoryEventCopyWithImpl<$Res>
    implements _$StartEditingCopyWith<$Res> {
  __$StartEditingCopyWithImpl(
      _StartEditing _value, $Res Function(_StartEditing) _then)
      : super(_value, (v) => _then(v as _StartEditing));

  @override
  _StartEditing get _value => super._value as _StartEditing;
}

/// @nodoc
class _$_StartEditing implements _StartEditing {
  const _$_StartEditing();

  @override
  String toString() {
    return 'AnimalInventoryEvent.startEditing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartEditing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Animal> initialOption),
    @required TResult startEditing(),
    @required TResult save(Animal animal),
    @required TResult delete(int animalId),
    @required TResult loadAnimals(),
    @required TResult search(String searchValue),
    @required TResult stopSearching(),
    @required TResult onChangeAnimalState(GeneralObject type),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return startEditing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Animal> initialOption),
    TResult startEditing(),
    TResult save(Animal animal),
    TResult delete(int animalId),
    TResult loadAnimals(),
    TResult search(String searchValue),
    TResult stopSearching(),
    TResult onChangeAnimalState(GeneralObject type),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startEditing != null) {
      return startEditing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult startEditing(_StartEditing value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadAnimals(_LoadAnimals value),
    @required TResult search(_Search value),
    @required TResult stopSearching(_StopSearching value),
    @required TResult onChangeAnimalState(_OnChangeAnimalState value),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return startEditing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult startEditing(_StartEditing value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadAnimals(_LoadAnimals value),
    TResult search(_Search value),
    TResult stopSearching(_StopSearching value),
    TResult onChangeAnimalState(_OnChangeAnimalState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startEditing != null) {
      return startEditing(this);
    }
    return orElse();
  }
}

abstract class _StartEditing implements AnimalInventoryEvent {
  const factory _StartEditing() = _$_StartEditing;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
  $Res call({Animal animal});
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$AnimalInventoryEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;

  @override
  $Res call({
    Object animal = freezed,
  }) {
    return _then(_Save(
      animal: animal == freezed ? _value.animal : animal as Animal,
    ));
  }
}

/// @nodoc
class _$_Save implements _Save {
  const _$_Save({this.animal});

  @override
  final Animal animal;

  @override
  String toString() {
    return 'AnimalInventoryEvent.save(animal: $animal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Save &&
            (identical(other.animal, animal) ||
                const DeepCollectionEquality().equals(other.animal, animal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(animal);

  @override
  _$SaveCopyWith<_Save> get copyWith =>
      __$SaveCopyWithImpl<_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Animal> initialOption),
    @required TResult startEditing(),
    @required TResult save(Animal animal),
    @required TResult delete(int animalId),
    @required TResult loadAnimals(),
    @required TResult search(String searchValue),
    @required TResult stopSearching(),
    @required TResult onChangeAnimalState(GeneralObject type),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return save(animal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Animal> initialOption),
    TResult startEditing(),
    TResult save(Animal animal),
    TResult delete(int animalId),
    TResult loadAnimals(),
    TResult search(String searchValue),
    TResult stopSearching(),
    TResult onChangeAnimalState(GeneralObject type),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(animal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult startEditing(_StartEditing value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadAnimals(_LoadAnimals value),
    @required TResult search(_Search value),
    @required TResult stopSearching(_StopSearching value),
    @required TResult onChangeAnimalState(_OnChangeAnimalState value),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult startEditing(_StartEditing value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadAnimals(_LoadAnimals value),
    TResult search(_Search value),
    TResult stopSearching(_StopSearching value),
    TResult onChangeAnimalState(_OnChangeAnimalState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements AnimalInventoryEvent {
  const factory _Save({Animal animal}) = _$_Save;

  Animal get animal;
  _$SaveCopyWith<_Save> get copyWith;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({int animalId});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    extends _$AnimalInventoryEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object animalId = freezed,
  }) {
    return _then(_Delete(
      animalId: animalId == freezed ? _value.animalId : animalId as int,
    ));
  }
}

/// @nodoc
class _$_Delete implements _Delete {
  const _$_Delete({this.animalId});

  @override
  final int animalId;

  @override
  String toString() {
    return 'AnimalInventoryEvent.delete(animalId: $animalId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.animalId, animalId) ||
                const DeepCollectionEquality()
                    .equals(other.animalId, animalId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(animalId);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Animal> initialOption),
    @required TResult startEditing(),
    @required TResult save(Animal animal),
    @required TResult delete(int animalId),
    @required TResult loadAnimals(),
    @required TResult search(String searchValue),
    @required TResult stopSearching(),
    @required TResult onChangeAnimalState(GeneralObject type),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return delete(animalId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Animal> initialOption),
    TResult startEditing(),
    TResult save(Animal animal),
    TResult delete(int animalId),
    TResult loadAnimals(),
    TResult search(String searchValue),
    TResult stopSearching(),
    TResult onChangeAnimalState(GeneralObject type),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(animalId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult startEditing(_StartEditing value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadAnimals(_LoadAnimals value),
    @required TResult search(_Search value),
    @required TResult stopSearching(_StopSearching value),
    @required TResult onChangeAnimalState(_OnChangeAnimalState value),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult startEditing(_StartEditing value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadAnimals(_LoadAnimals value),
    TResult search(_Search value),
    TResult stopSearching(_StopSearching value),
    TResult onChangeAnimalState(_OnChangeAnimalState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements AnimalInventoryEvent {
  const factory _Delete({int animalId}) = _$_Delete;

  int get animalId;
  _$DeleteCopyWith<_Delete> get copyWith;
}

/// @nodoc
abstract class _$LoadAnimalsCopyWith<$Res> {
  factory _$LoadAnimalsCopyWith(
          _LoadAnimals value, $Res Function(_LoadAnimals) then) =
      __$LoadAnimalsCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadAnimalsCopyWithImpl<$Res>
    extends _$AnimalInventoryEventCopyWithImpl<$Res>
    implements _$LoadAnimalsCopyWith<$Res> {
  __$LoadAnimalsCopyWithImpl(
      _LoadAnimals _value, $Res Function(_LoadAnimals) _then)
      : super(_value, (v) => _then(v as _LoadAnimals));

  @override
  _LoadAnimals get _value => super._value as _LoadAnimals;
}

/// @nodoc
class _$_LoadAnimals implements _LoadAnimals {
  const _$_LoadAnimals();

  @override
  String toString() {
    return 'AnimalInventoryEvent.loadAnimals()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadAnimals);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Animal> initialOption),
    @required TResult startEditing(),
    @required TResult save(Animal animal),
    @required TResult delete(int animalId),
    @required TResult loadAnimals(),
    @required TResult search(String searchValue),
    @required TResult stopSearching(),
    @required TResult onChangeAnimalState(GeneralObject type),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return loadAnimals();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Animal> initialOption),
    TResult startEditing(),
    TResult save(Animal animal),
    TResult delete(int animalId),
    TResult loadAnimals(),
    TResult search(String searchValue),
    TResult stopSearching(),
    TResult onChangeAnimalState(GeneralObject type),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadAnimals != null) {
      return loadAnimals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult startEditing(_StartEditing value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadAnimals(_LoadAnimals value),
    @required TResult search(_Search value),
    @required TResult stopSearching(_StopSearching value),
    @required TResult onChangeAnimalState(_OnChangeAnimalState value),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return loadAnimals(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult startEditing(_StartEditing value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadAnimals(_LoadAnimals value),
    TResult search(_Search value),
    TResult stopSearching(_StopSearching value),
    TResult onChangeAnimalState(_OnChangeAnimalState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadAnimals != null) {
      return loadAnimals(this);
    }
    return orElse();
  }
}

abstract class _LoadAnimals implements AnimalInventoryEvent {
  const factory _LoadAnimals() = _$_LoadAnimals;
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  $Res call({String searchValue});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res>
    extends _$AnimalInventoryEventCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object searchValue = freezed,
  }) {
    return _then(_Search(
      searchValue:
          searchValue == freezed ? _value.searchValue : searchValue as String,
    ));
  }
}

/// @nodoc
class _$_Search implements _Search {
  const _$_Search({this.searchValue});

  @override
  final String searchValue;

  @override
  String toString() {
    return 'AnimalInventoryEvent.search(searchValue: $searchValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Search &&
            (identical(other.searchValue, searchValue) ||
                const DeepCollectionEquality()
                    .equals(other.searchValue, searchValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchValue);

  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Animal> initialOption),
    @required TResult startEditing(),
    @required TResult save(Animal animal),
    @required TResult delete(int animalId),
    @required TResult loadAnimals(),
    @required TResult search(String searchValue),
    @required TResult stopSearching(),
    @required TResult onChangeAnimalState(GeneralObject type),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return search(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Animal> initialOption),
    TResult startEditing(),
    TResult save(Animal animal),
    TResult delete(int animalId),
    TResult loadAnimals(),
    TResult search(String searchValue),
    TResult stopSearching(),
    TResult onChangeAnimalState(GeneralObject type),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult startEditing(_StartEditing value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadAnimals(_LoadAnimals value),
    @required TResult search(_Search value),
    @required TResult stopSearching(_StopSearching value),
    @required TResult onChangeAnimalState(_OnChangeAnimalState value),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult startEditing(_StartEditing value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadAnimals(_LoadAnimals value),
    TResult search(_Search value),
    TResult stopSearching(_StopSearching value),
    TResult onChangeAnimalState(_OnChangeAnimalState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements AnimalInventoryEvent {
  const factory _Search({String searchValue}) = _$_Search;

  String get searchValue;
  _$SearchCopyWith<_Search> get copyWith;
}

/// @nodoc
abstract class _$StopSearchingCopyWith<$Res> {
  factory _$StopSearchingCopyWith(
          _StopSearching value, $Res Function(_StopSearching) then) =
      __$StopSearchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$StopSearchingCopyWithImpl<$Res>
    extends _$AnimalInventoryEventCopyWithImpl<$Res>
    implements _$StopSearchingCopyWith<$Res> {
  __$StopSearchingCopyWithImpl(
      _StopSearching _value, $Res Function(_StopSearching) _then)
      : super(_value, (v) => _then(v as _StopSearching));

  @override
  _StopSearching get _value => super._value as _StopSearching;
}

/// @nodoc
class _$_StopSearching implements _StopSearching {
  const _$_StopSearching();

  @override
  String toString() {
    return 'AnimalInventoryEvent.stopSearching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StopSearching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Animal> initialOption),
    @required TResult startEditing(),
    @required TResult save(Animal animal),
    @required TResult delete(int animalId),
    @required TResult loadAnimals(),
    @required TResult search(String searchValue),
    @required TResult stopSearching(),
    @required TResult onChangeAnimalState(GeneralObject type),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return stopSearching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Animal> initialOption),
    TResult startEditing(),
    TResult save(Animal animal),
    TResult delete(int animalId),
    TResult loadAnimals(),
    TResult search(String searchValue),
    TResult stopSearching(),
    TResult onChangeAnimalState(GeneralObject type),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stopSearching != null) {
      return stopSearching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult startEditing(_StartEditing value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadAnimals(_LoadAnimals value),
    @required TResult search(_Search value),
    @required TResult stopSearching(_StopSearching value),
    @required TResult onChangeAnimalState(_OnChangeAnimalState value),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return stopSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult startEditing(_StartEditing value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadAnimals(_LoadAnimals value),
    TResult search(_Search value),
    TResult stopSearching(_StopSearching value),
    TResult onChangeAnimalState(_OnChangeAnimalState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stopSearching != null) {
      return stopSearching(this);
    }
    return orElse();
  }
}

abstract class _StopSearching implements AnimalInventoryEvent {
  const factory _StopSearching() = _$_StopSearching;
}

/// @nodoc
abstract class _$OnChangeAnimalStateCopyWith<$Res> {
  factory _$OnChangeAnimalStateCopyWith(_OnChangeAnimalState value,
          $Res Function(_OnChangeAnimalState) then) =
      __$OnChangeAnimalStateCopyWithImpl<$Res>;
  $Res call({GeneralObject type});
}

/// @nodoc
class __$OnChangeAnimalStateCopyWithImpl<$Res>
    extends _$AnimalInventoryEventCopyWithImpl<$Res>
    implements _$OnChangeAnimalStateCopyWith<$Res> {
  __$OnChangeAnimalStateCopyWithImpl(
      _OnChangeAnimalState _value, $Res Function(_OnChangeAnimalState) _then)
      : super(_value, (v) => _then(v as _OnChangeAnimalState));

  @override
  _OnChangeAnimalState get _value => super._value as _OnChangeAnimalState;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_OnChangeAnimalState(
      type: type == freezed ? _value.type : type as GeneralObject,
    ));
  }
}

/// @nodoc
class _$_OnChangeAnimalState implements _OnChangeAnimalState {
  const _$_OnChangeAnimalState({this.type});

  @override
  final GeneralObject type;

  @override
  String toString() {
    return 'AnimalInventoryEvent.onChangeAnimalState(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnChangeAnimalState &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @override
  _$OnChangeAnimalStateCopyWith<_OnChangeAnimalState> get copyWith =>
      __$OnChangeAnimalStateCopyWithImpl<_OnChangeAnimalState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Animal> initialOption),
    @required TResult startEditing(),
    @required TResult save(Animal animal),
    @required TResult delete(int animalId),
    @required TResult loadAnimals(),
    @required TResult search(String searchValue),
    @required TResult stopSearching(),
    @required TResult onChangeAnimalState(GeneralObject type),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return onChangeAnimalState(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Animal> initialOption),
    TResult startEditing(),
    TResult save(Animal animal),
    TResult delete(int animalId),
    TResult loadAnimals(),
    TResult search(String searchValue),
    TResult stopSearching(),
    TResult onChangeAnimalState(GeneralObject type),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChangeAnimalState != null) {
      return onChangeAnimalState(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult startEditing(_StartEditing value),
    @required TResult save(_Save value),
    @required TResult delete(_Delete value),
    @required TResult loadAnimals(_LoadAnimals value),
    @required TResult search(_Search value),
    @required TResult stopSearching(_StopSearching value),
    @required TResult onChangeAnimalState(_OnChangeAnimalState value),
  }) {
    assert(initialized != null);
    assert(startEditing != null);
    assert(save != null);
    assert(delete != null);
    assert(loadAnimals != null);
    assert(search != null);
    assert(stopSearching != null);
    assert(onChangeAnimalState != null);
    return onChangeAnimalState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult startEditing(_StartEditing value),
    TResult save(_Save value),
    TResult delete(_Delete value),
    TResult loadAnimals(_LoadAnimals value),
    TResult search(_Search value),
    TResult stopSearching(_StopSearching value),
    TResult onChangeAnimalState(_OnChangeAnimalState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChangeAnimalState != null) {
      return onChangeAnimalState(this);
    }
    return orElse();
  }
}

abstract class _OnChangeAnimalState implements AnimalInventoryEvent {
  const factory _OnChangeAnimalState({GeneralObject type}) =
      _$_OnChangeAnimalState;

  GeneralObject get type;
  _$OnChangeAnimalStateCopyWith<_OnChangeAnimalState> get copyWith;
}

/// @nodoc
class _$AnimalInventoryStateTearOff {
  const _$AnimalInventoryStateTearOff();

// ignore: unused_element
  _AnimalInventoryState call(
      {@required
          Animal animal,
      @required
          List<Animal> animals,
      @required
          List<GeneralObject> animalStates,
      @required
          bool isCreating,
      @required
          bool isViewing,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool isSearching,
      @required
          bool isLoading,
      @required
          bool isDeleting,
      @required
          Option<Either<NetworkExceptions, Animal>> saveFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, List<Animal>>>
              getAnimalsFailureOrSuccessOption}) {
    return _AnimalInventoryState(
      animal: animal,
      animals: animals,
      animalStates: animalStates,
      isCreating: isCreating,
      isViewing: isViewing,
      isEditing: isEditing,
      isSaving: isSaving,
      isSearching: isSearching,
      isLoading: isLoading,
      isDeleting: isDeleting,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption,
      getAnimalsFailureOrSuccessOption: getAnimalsFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AnimalInventoryState = _$AnimalInventoryStateTearOff();

/// @nodoc
mixin _$AnimalInventoryState {
  Animal get animal;
  List<Animal> get animals;
  List<GeneralObject> get animalStates;
  bool get isCreating;
  bool get isViewing;
  bool get isEditing;
  bool get isSaving;
  bool get isSearching;
  bool get isLoading;
  bool get isDeleting;
  Option<Either<NetworkExceptions, Animal>> get saveFailureOrSuccessOption;
  Option<Either<NetworkExceptions, Unit>> get deleteFailureOrSuccessOption;
  Option<Either<NetworkExceptions, List<Animal>>>
      get getAnimalsFailureOrSuccessOption;

  $AnimalInventoryStateCopyWith<AnimalInventoryState> get copyWith;
}

/// @nodoc
abstract class $AnimalInventoryStateCopyWith<$Res> {
  factory $AnimalInventoryStateCopyWith(AnimalInventoryState value,
          $Res Function(AnimalInventoryState) then) =
      _$AnimalInventoryStateCopyWithImpl<$Res>;
  $Res call(
      {Animal animal,
      List<Animal> animals,
      List<GeneralObject> animalStates,
      bool isCreating,
      bool isViewing,
      bool isEditing,
      bool isSaving,
      bool isSearching,
      bool isLoading,
      bool isDeleting,
      Option<Either<NetworkExceptions, Animal>> saveFailureOrSuccessOption,
      Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      Option<Either<NetworkExceptions, List<Animal>>>
          getAnimalsFailureOrSuccessOption});
}

/// @nodoc
class _$AnimalInventoryStateCopyWithImpl<$Res>
    implements $AnimalInventoryStateCopyWith<$Res> {
  _$AnimalInventoryStateCopyWithImpl(this._value, this._then);

  final AnimalInventoryState _value;
  // ignore: unused_field
  final $Res Function(AnimalInventoryState) _then;

  @override
  $Res call({
    Object animal = freezed,
    Object animals = freezed,
    Object animalStates = freezed,
    Object isCreating = freezed,
    Object isViewing = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object isSearching = freezed,
    Object isLoading = freezed,
    Object isDeleting = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
    Object getAnimalsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      animal: animal == freezed ? _value.animal : animal as Animal,
      animals: animals == freezed ? _value.animals : animals as List<Animal>,
      animalStates: animalStates == freezed
          ? _value.animalStates
          : animalStates as List<GeneralObject>,
      isCreating:
          isCreating == freezed ? _value.isCreating : isCreating as bool,
      isViewing: isViewing == freezed ? _value.isViewing : isViewing as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isDeleting:
          isDeleting == freezed ? _value.isDeleting : isDeleting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Animal>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Unit>>,
      getAnimalsFailureOrSuccessOption:
          getAnimalsFailureOrSuccessOption == freezed
              ? _value.getAnimalsFailureOrSuccessOption
              : getAnimalsFailureOrSuccessOption
                  as Option<Either<NetworkExceptions, List<Animal>>>,
    ));
  }
}

/// @nodoc
abstract class _$AnimalInventoryStateCopyWith<$Res>
    implements $AnimalInventoryStateCopyWith<$Res> {
  factory _$AnimalInventoryStateCopyWith(_AnimalInventoryState value,
          $Res Function(_AnimalInventoryState) then) =
      __$AnimalInventoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Animal animal,
      List<Animal> animals,
      List<GeneralObject> animalStates,
      bool isCreating,
      bool isViewing,
      bool isEditing,
      bool isSaving,
      bool isSearching,
      bool isLoading,
      bool isDeleting,
      Option<Either<NetworkExceptions, Animal>> saveFailureOrSuccessOption,
      Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      Option<Either<NetworkExceptions, List<Animal>>>
          getAnimalsFailureOrSuccessOption});
}

/// @nodoc
class __$AnimalInventoryStateCopyWithImpl<$Res>
    extends _$AnimalInventoryStateCopyWithImpl<$Res>
    implements _$AnimalInventoryStateCopyWith<$Res> {
  __$AnimalInventoryStateCopyWithImpl(
      _AnimalInventoryState _value, $Res Function(_AnimalInventoryState) _then)
      : super(_value, (v) => _then(v as _AnimalInventoryState));

  @override
  _AnimalInventoryState get _value => super._value as _AnimalInventoryState;

  @override
  $Res call({
    Object animal = freezed,
    Object animals = freezed,
    Object animalStates = freezed,
    Object isCreating = freezed,
    Object isViewing = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object isSearching = freezed,
    Object isLoading = freezed,
    Object isDeleting = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object deleteFailureOrSuccessOption = freezed,
    Object getAnimalsFailureOrSuccessOption = freezed,
  }) {
    return _then(_AnimalInventoryState(
      animal: animal == freezed ? _value.animal : animal as Animal,
      animals: animals == freezed ? _value.animals : animals as List<Animal>,
      animalStates: animalStates == freezed
          ? _value.animalStates
          : animalStates as List<GeneralObject>,
      isCreating:
          isCreating == freezed ? _value.isCreating : isCreating as bool,
      isViewing: isViewing == freezed ? _value.isViewing : isViewing as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isDeleting:
          isDeleting == freezed ? _value.isDeleting : isDeleting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Animal>>,
      deleteFailureOrSuccessOption: deleteFailureOrSuccessOption == freezed
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption
              as Option<Either<NetworkExceptions, Unit>>,
      getAnimalsFailureOrSuccessOption:
          getAnimalsFailureOrSuccessOption == freezed
              ? _value.getAnimalsFailureOrSuccessOption
              : getAnimalsFailureOrSuccessOption
                  as Option<Either<NetworkExceptions, List<Animal>>>,
    ));
  }
}

/// @nodoc
class _$_AnimalInventoryState implements _AnimalInventoryState {
  const _$_AnimalInventoryState(
      {@required this.animal,
      @required this.animals,
      @required this.animalStates,
      @required this.isCreating,
      @required this.isViewing,
      @required this.isEditing,
      @required this.isSaving,
      @required this.isSearching,
      @required this.isLoading,
      @required this.isDeleting,
      @required this.saveFailureOrSuccessOption,
      @required this.deleteFailureOrSuccessOption,
      @required this.getAnimalsFailureOrSuccessOption})
      : assert(animal != null),
        assert(animals != null),
        assert(animalStates != null),
        assert(isCreating != null),
        assert(isViewing != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(isSearching != null),
        assert(isLoading != null),
        assert(isDeleting != null),
        assert(saveFailureOrSuccessOption != null),
        assert(deleteFailureOrSuccessOption != null),
        assert(getAnimalsFailureOrSuccessOption != null);

  @override
  final Animal animal;
  @override
  final List<Animal> animals;
  @override
  final List<GeneralObject> animalStates;
  @override
  final bool isCreating;
  @override
  final bool isViewing;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final bool isSearching;
  @override
  final bool isLoading;
  @override
  final bool isDeleting;
  @override
  final Option<Either<NetworkExceptions, Animal>> saveFailureOrSuccessOption;
  @override
  final Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption;
  @override
  final Option<Either<NetworkExceptions, List<Animal>>>
      getAnimalsFailureOrSuccessOption;

  @override
  String toString() {
    return 'AnimalInventoryState(animal: $animal, animals: $animals, animalStates: $animalStates, isCreating: $isCreating, isViewing: $isViewing, isEditing: $isEditing, isSaving: $isSaving, isSearching: $isSearching, isLoading: $isLoading, isDeleting: $isDeleting, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption, getAnimalsFailureOrSuccessOption: $getAnimalsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnimalInventoryState &&
            (identical(other.animal, animal) ||
                const DeepCollectionEquality().equals(other.animal, animal)) &&
            (identical(other.animals, animals) ||
                const DeepCollectionEquality()
                    .equals(other.animals, animals)) &&
            (identical(other.animalStates, animalStates) ||
                const DeepCollectionEquality()
                    .equals(other.animalStates, animalStates)) &&
            (identical(other.isCreating, isCreating) ||
                const DeepCollectionEquality()
                    .equals(other.isCreating, isCreating)) &&
            (identical(other.isViewing, isViewing) ||
                const DeepCollectionEquality()
                    .equals(other.isViewing, isViewing)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isDeleting, isDeleting) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleting, isDeleting)) &&
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
            (identical(other.getAnimalsFailureOrSuccessOption,
                    getAnimalsFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.getAnimalsFailureOrSuccessOption,
                    getAnimalsFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(animal) ^
      const DeepCollectionEquality().hash(animals) ^
      const DeepCollectionEquality().hash(animalStates) ^
      const DeepCollectionEquality().hash(isCreating) ^
      const DeepCollectionEquality().hash(isViewing) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isDeleting) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(deleteFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(getAnimalsFailureOrSuccessOption);

  @override
  _$AnimalInventoryStateCopyWith<_AnimalInventoryState> get copyWith =>
      __$AnimalInventoryStateCopyWithImpl<_AnimalInventoryState>(
          this, _$identity);
}

abstract class _AnimalInventoryState implements AnimalInventoryState {
  const factory _AnimalInventoryState(
      {@required
          Animal animal,
      @required
          List<Animal> animals,
      @required
          List<GeneralObject> animalStates,
      @required
          bool isCreating,
      @required
          bool isViewing,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool isSearching,
      @required
          bool isLoading,
      @required
          bool isDeleting,
      @required
          Option<Either<NetworkExceptions, Animal>> saveFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, Unit>> deleteFailureOrSuccessOption,
      @required
          Option<Either<NetworkExceptions, List<Animal>>>
              getAnimalsFailureOrSuccessOption}) = _$_AnimalInventoryState;

  @override
  Animal get animal;
  @override
  List<Animal> get animals;
  @override
  List<GeneralObject> get animalStates;
  @override
  bool get isCreating;
  @override
  bool get isViewing;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  bool get isSearching;
  @override
  bool get isLoading;
  @override
  bool get isDeleting;
  @override
  Option<Either<NetworkExceptions, Animal>> get saveFailureOrSuccessOption;
  @override
  Option<Either<NetworkExceptions, Unit>> get deleteFailureOrSuccessOption;
  @override
  Option<Either<NetworkExceptions, List<Animal>>>
      get getAnimalsFailureOrSuccessOption;
  @override
  _$AnimalInventoryStateCopyWith<_AnimalInventoryState> get copyWith;
}
