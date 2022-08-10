// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List? image) updateImage,
    required TResult Function(bool isLoad) updateLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List? image)? updateImage,
    TResult Function(bool isLoad)? updateLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List? image)? updateImage,
    TResult Function(bool isLoad)? updateLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateImage value) updateImage,
    required TResult Function(UpdateLoading value) updateLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateImage value)? updateImage,
    TResult Function(UpdateLoading value)? updateLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateImage value)? updateImage,
    TResult Function(UpdateLoading value)? updateLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res> implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  final SignupEvent _value;
  // ignore: unused_field
  final $Res Function(SignupEvent) _then;
}

/// @nodoc
abstract class _$$UpdateImageCopyWith<$Res> {
  factory _$$UpdateImageCopyWith(
          _$UpdateImage value, $Res Function(_$UpdateImage) then) =
      __$$UpdateImageCopyWithImpl<$Res>;
  $Res call({Uint8List? image});
}

/// @nodoc
class __$$UpdateImageCopyWithImpl<$Res> extends _$SignupEventCopyWithImpl<$Res>
    implements _$$UpdateImageCopyWith<$Res> {
  __$$UpdateImageCopyWithImpl(
      _$UpdateImage _value, $Res Function(_$UpdateImage) _then)
      : super(_value, (v) => _then(v as _$UpdateImage));

  @override
  _$UpdateImage get _value => super._value as _$UpdateImage;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$UpdateImage(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$UpdateImage implements UpdateImage {
  const _$UpdateImage({this.image});

  @override
  final Uint8List? image;

  @override
  String toString() {
    return 'SignupEvent.updateImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImage &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$UpdateImageCopyWith<_$UpdateImage> get copyWith =>
      __$$UpdateImageCopyWithImpl<_$UpdateImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List? image) updateImage,
    required TResult Function(bool isLoad) updateLoading,
  }) {
    return updateImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List? image)? updateImage,
    TResult Function(bool isLoad)? updateLoading,
  }) {
    return updateImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List? image)? updateImage,
    TResult Function(bool isLoad)? updateLoading,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateImage value) updateImage,
    required TResult Function(UpdateLoading value) updateLoading,
  }) {
    return updateImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateImage value)? updateImage,
    TResult Function(UpdateLoading value)? updateLoading,
  }) {
    return updateImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateImage value)? updateImage,
    TResult Function(UpdateLoading value)? updateLoading,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(this);
    }
    return orElse();
  }
}

abstract class UpdateImage implements SignupEvent {
  const factory UpdateImage({final Uint8List? image}) = _$UpdateImage;

  Uint8List? get image;
  @JsonKey(ignore: true)
  _$$UpdateImageCopyWith<_$UpdateImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLoadingCopyWith<$Res> {
  factory _$$UpdateLoadingCopyWith(
          _$UpdateLoading value, $Res Function(_$UpdateLoading) then) =
      __$$UpdateLoadingCopyWithImpl<$Res>;
  $Res call({bool isLoad});
}

/// @nodoc
class __$$UpdateLoadingCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res>
    implements _$$UpdateLoadingCopyWith<$Res> {
  __$$UpdateLoadingCopyWithImpl(
      _$UpdateLoading _value, $Res Function(_$UpdateLoading) _then)
      : super(_value, (v) => _then(v as _$UpdateLoading));

  @override
  _$UpdateLoading get _value => super._value as _$UpdateLoading;

  @override
  $Res call({
    Object? isLoad = freezed,
  }) {
    return _then(_$UpdateLoading(
      isLoad: isLoad == freezed
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateLoading implements UpdateLoading {
  const _$UpdateLoading({required this.isLoad});

  @override
  final bool isLoad;

  @override
  String toString() {
    return 'SignupEvent.updateLoading(isLoad: $isLoad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLoading &&
            const DeepCollectionEquality().equals(other.isLoad, isLoad));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoad));

  @JsonKey(ignore: true)
  @override
  _$$UpdateLoadingCopyWith<_$UpdateLoading> get copyWith =>
      __$$UpdateLoadingCopyWithImpl<_$UpdateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List? image) updateImage,
    required TResult Function(bool isLoad) updateLoading,
  }) {
    return updateLoading(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List? image)? updateImage,
    TResult Function(bool isLoad)? updateLoading,
  }) {
    return updateLoading?.call(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List? image)? updateImage,
    TResult Function(bool isLoad)? updateLoading,
    required TResult orElse(),
  }) {
    if (updateLoading != null) {
      return updateLoading(isLoad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateImage value) updateImage,
    required TResult Function(UpdateLoading value) updateLoading,
  }) {
    return updateLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateImage value)? updateImage,
    TResult Function(UpdateLoading value)? updateLoading,
  }) {
    return updateLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateImage value)? updateImage,
    TResult Function(UpdateLoading value)? updateLoading,
    required TResult orElse(),
  }) {
    if (updateLoading != null) {
      return updateLoading(this);
    }
    return orElse();
  }
}

abstract class UpdateLoading implements SignupEvent {
  const factory UpdateLoading({required final bool isLoad}) = _$UpdateLoading;

  bool get isLoad;
  @JsonKey(ignore: true)
  _$$UpdateLoadingCopyWith<_$UpdateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  bool get isLoading => throw _privateConstructorUsedError;
  Uint8List? get selectedImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, Uint8List? selectedImage});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? selectedImage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedImage: selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
abstract class _$$_SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$_SignupStateCopyWith(
          _$_SignupState value, $Res Function(_$_SignupState) then) =
      __$$_SignupStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, Uint8List? selectedImage});
}

/// @nodoc
class __$$_SignupStateCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$$_SignupStateCopyWith<$Res> {
  __$$_SignupStateCopyWithImpl(
      _$_SignupState _value, $Res Function(_$_SignupState) _then)
      : super(_value, (v) => _then(v as _$_SignupState));

  @override
  _$_SignupState get _value => super._value as _$_SignupState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? selectedImage = freezed,
  }) {
    return _then(_$_SignupState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedImage: selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState({required this.isLoading, this.selectedImage});

  @override
  final bool isLoading;
  @override
  final Uint8List? selectedImage;

  @override
  String toString() {
    return 'SignupState(isLoading: $isLoading, selectedImage: $selectedImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.selectedImage, selectedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(selectedImage));

  @JsonKey(ignore: true)
  @override
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      __$$_SignupStateCopyWithImpl<_$_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {required final bool isLoading,
      final Uint8List? selectedImage}) = _$_SignupState;

  @override
  bool get isLoading;
  @override
  Uint8List? get selectedImage;
  @override
  @JsonKey(ignore: true)
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
