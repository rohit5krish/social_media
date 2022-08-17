// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) toggleSelected,
    required TResult Function() getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? toggleSelected,
    TResult Function()? getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? toggleSelected,
    TResult Function()? getUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleSelected value) toggleSelected,
    required TResult Function(GetUserDetails value) getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleSelected value)? toggleSelected,
    TResult Function(GetUserDetails value)? getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleSelected value)? toggleSelected,
    TResult Function(GetUserDetails value)? getUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$ToggleSelectedCopyWith<$Res> {
  factory _$$ToggleSelectedCopyWith(
          _$ToggleSelected value, $Res Function(_$ToggleSelected) then) =
      __$$ToggleSelectedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$ToggleSelectedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$ToggleSelectedCopyWith<$Res> {
  __$$ToggleSelectedCopyWithImpl(
      _$ToggleSelected _value, $Res Function(_$ToggleSelected) _then)
      : super(_value, (v) => _then(v as _$ToggleSelected));

  @override
  _$ToggleSelected get _value => super._value as _$ToggleSelected;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$ToggleSelected(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToggleSelected implements ToggleSelected {
  const _$ToggleSelected({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ProfileEvent.toggleSelected(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleSelected &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$ToggleSelectedCopyWith<_$ToggleSelected> get copyWith =>
      __$$ToggleSelectedCopyWithImpl<_$ToggleSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) toggleSelected,
    required TResult Function() getUserDetails,
  }) {
    return toggleSelected(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? toggleSelected,
    TResult Function()? getUserDetails,
  }) {
    return toggleSelected?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? toggleSelected,
    TResult Function()? getUserDetails,
    required TResult orElse(),
  }) {
    if (toggleSelected != null) {
      return toggleSelected(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleSelected value) toggleSelected,
    required TResult Function(GetUserDetails value) getUserDetails,
  }) {
    return toggleSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleSelected value)? toggleSelected,
    TResult Function(GetUserDetails value)? getUserDetails,
  }) {
    return toggleSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleSelected value)? toggleSelected,
    TResult Function(GetUserDetails value)? getUserDetails,
    required TResult orElse(),
  }) {
    if (toggleSelected != null) {
      return toggleSelected(this);
    }
    return orElse();
  }
}

abstract class ToggleSelected implements ProfileEvent {
  const factory ToggleSelected({required final int index}) = _$ToggleSelected;

  int get index;
  @JsonKey(ignore: true)
  _$$ToggleSelectedCopyWith<_$ToggleSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserDetailsCopyWith<$Res> {
  factory _$$GetUserDetailsCopyWith(
          _$GetUserDetails value, $Res Function(_$GetUserDetails) then) =
      __$$GetUserDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDetailsCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$GetUserDetailsCopyWith<$Res> {
  __$$GetUserDetailsCopyWithImpl(
      _$GetUserDetails _value, $Res Function(_$GetUserDetails) _then)
      : super(_value, (v) => _then(v as _$GetUserDetails));

  @override
  _$GetUserDetails get _value => super._value as _$GetUserDetails;
}

/// @nodoc

class _$GetUserDetails implements GetUserDetails {
  const _$GetUserDetails();

  @override
  String toString() {
    return 'ProfileEvent.getUserDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) toggleSelected,
    required TResult Function() getUserDetails,
  }) {
    return getUserDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? toggleSelected,
    TResult Function()? getUserDetails,
  }) {
    return getUserDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? toggleSelected,
    TResult Function()? getUserDetails,
    required TResult orElse(),
  }) {
    if (getUserDetails != null) {
      return getUserDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleSelected value) toggleSelected,
    required TResult Function(GetUserDetails value) getUserDetails,
  }) {
    return getUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleSelected value)? toggleSelected,
    TResult Function(GetUserDetails value)? getUserDetails,
  }) {
    return getUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleSelected value)? toggleSelected,
    TResult Function(GetUserDetails value)? getUserDetails,
    required TResult orElse(),
  }) {
    if (getUserDetails != null) {
      return getUserDetails(this);
    }
    return orElse();
  }
}

abstract class GetUserDetails implements ProfileEvent {
  const factory GetUserDetails() = _$GetUserDetails;
}

/// @nodoc
mixin _$ProfileState {
  List<bool> get selectedToggle => throw _privateConstructorUsedError;
  UserModel? get userInfos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({List<bool> selectedToggle, UserModel? userInfos});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? selectedToggle = freezed,
    Object? userInfos = freezed,
  }) {
    return _then(_value.copyWith(
      selectedToggle: selectedToggle == freezed
          ? _value.selectedToggle
          : selectedToggle // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      userInfos: userInfos == freezed
          ? _value.userInfos
          : userInfos // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({List<bool> selectedToggle, UserModel? userInfos});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, (v) => _then(v as _$_ProfileState));

  @override
  _$_ProfileState get _value => super._value as _$_ProfileState;

  @override
  $Res call({
    Object? selectedToggle = freezed,
    Object? userInfos = freezed,
  }) {
    return _then(_$_ProfileState(
      selectedToggle: selectedToggle == freezed
          ? _value._selectedToggle
          : selectedToggle // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      userInfos: userInfos == freezed
          ? _value.userInfos
          : userInfos // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required final List<bool> selectedToggle, this.userInfos})
      : _selectedToggle = selectedToggle;

  final List<bool> _selectedToggle;
  @override
  List<bool> get selectedToggle {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedToggle);
  }

  @override
  final UserModel? userInfos;

  @override
  String toString() {
    return 'ProfileState(selectedToggle: $selectedToggle, userInfos: $userInfos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality()
                .equals(other._selectedToggle, _selectedToggle) &&
            const DeepCollectionEquality().equals(other.userInfos, userInfos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedToggle),
      const DeepCollectionEquality().hash(userInfos));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final List<bool> selectedToggle,
      final UserModel? userInfos}) = _$_ProfileState;

  @override
  List<bool> get selectedToggle;
  @override
  UserModel? get userInfos;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
