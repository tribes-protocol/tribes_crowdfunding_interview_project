// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tribe_visual.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TribeVisualType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emoji) emoji,
    required TResult Function(String path) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emoji)? emoji,
    TResult? Function(String path)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emoji)? emoji,
    TResult Function(String path)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TribeVisualTypeEmoji value) emoji,
    required TResult Function(_TribeVisualTypeImage value) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TribeVisualTypeEmoji value)? emoji,
    TResult? Function(_TribeVisualTypeImage value)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TribeVisualTypeEmoji value)? emoji,
    TResult Function(_TribeVisualTypeImage value)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TribeVisualTypeCopyWith<$Res> {
  factory $TribeVisualTypeCopyWith(
          TribeVisualType value, $Res Function(TribeVisualType) then) =
      _$TribeVisualTypeCopyWithImpl<$Res, TribeVisualType>;
}

/// @nodoc
class _$TribeVisualTypeCopyWithImpl<$Res, $Val extends TribeVisualType>
    implements $TribeVisualTypeCopyWith<$Res> {
  _$TribeVisualTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TribeVisualTypeEmojiCopyWith<$Res> {
  factory _$$_TribeVisualTypeEmojiCopyWith(_$_TribeVisualTypeEmoji value,
          $Res Function(_$_TribeVisualTypeEmoji) then) =
      __$$_TribeVisualTypeEmojiCopyWithImpl<$Res>;
  @useResult
  $Res call({String emoji});
}

/// @nodoc
class __$$_TribeVisualTypeEmojiCopyWithImpl<$Res>
    extends _$TribeVisualTypeCopyWithImpl<$Res, _$_TribeVisualTypeEmoji>
    implements _$$_TribeVisualTypeEmojiCopyWith<$Res> {
  __$$_TribeVisualTypeEmojiCopyWithImpl(_$_TribeVisualTypeEmoji _value,
      $Res Function(_$_TribeVisualTypeEmoji) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
  }) {
    return _then(_$_TribeVisualTypeEmoji(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TribeVisualTypeEmoji implements _TribeVisualTypeEmoji {
  const _$_TribeVisualTypeEmoji({required this.emoji});

  @override
  final String emoji;

  @override
  String toString() {
    return 'TribeVisualType.emoji(emoji: $emoji)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TribeVisualTypeEmoji &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emoji);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TribeVisualTypeEmojiCopyWith<_$_TribeVisualTypeEmoji> get copyWith =>
      __$$_TribeVisualTypeEmojiCopyWithImpl<_$_TribeVisualTypeEmoji>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emoji) emoji,
    required TResult Function(String path) image,
  }) {
    return emoji(this.emoji);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emoji)? emoji,
    TResult? Function(String path)? image,
  }) {
    return emoji?.call(this.emoji);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emoji)? emoji,
    TResult Function(String path)? image,
    required TResult orElse(),
  }) {
    if (emoji != null) {
      return emoji(this.emoji);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TribeVisualTypeEmoji value) emoji,
    required TResult Function(_TribeVisualTypeImage value) image,
  }) {
    return emoji(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TribeVisualTypeEmoji value)? emoji,
    TResult? Function(_TribeVisualTypeImage value)? image,
  }) {
    return emoji?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TribeVisualTypeEmoji value)? emoji,
    TResult Function(_TribeVisualTypeImage value)? image,
    required TResult orElse(),
  }) {
    if (emoji != null) {
      return emoji(this);
    }
    return orElse();
  }
}

abstract class _TribeVisualTypeEmoji implements TribeVisualType {
  const factory _TribeVisualTypeEmoji({required final String emoji}) =
      _$_TribeVisualTypeEmoji;

  String get emoji;
  @JsonKey(ignore: true)
  _$$_TribeVisualTypeEmojiCopyWith<_$_TribeVisualTypeEmoji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TribeVisualTypeImageCopyWith<$Res> {
  factory _$$_TribeVisualTypeImageCopyWith(_$_TribeVisualTypeImage value,
          $Res Function(_$_TribeVisualTypeImage) then) =
      __$$_TribeVisualTypeImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$_TribeVisualTypeImageCopyWithImpl<$Res>
    extends _$TribeVisualTypeCopyWithImpl<$Res, _$_TribeVisualTypeImage>
    implements _$$_TribeVisualTypeImageCopyWith<$Res> {
  __$$_TribeVisualTypeImageCopyWithImpl(_$_TribeVisualTypeImage _value,
      $Res Function(_$_TribeVisualTypeImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_TribeVisualTypeImage(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TribeVisualTypeImage implements _TribeVisualTypeImage {
  const _$_TribeVisualTypeImage({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'TribeVisualType.image(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TribeVisualTypeImage &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TribeVisualTypeImageCopyWith<_$_TribeVisualTypeImage> get copyWith =>
      __$$_TribeVisualTypeImageCopyWithImpl<_$_TribeVisualTypeImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emoji) emoji,
    required TResult Function(String path) image,
  }) {
    return image(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emoji)? emoji,
    TResult? Function(String path)? image,
  }) {
    return image?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emoji)? emoji,
    TResult Function(String path)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TribeVisualTypeEmoji value) emoji,
    required TResult Function(_TribeVisualTypeImage value) image,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TribeVisualTypeEmoji value)? emoji,
    TResult? Function(_TribeVisualTypeImage value)? image,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TribeVisualTypeEmoji value)? emoji,
    TResult Function(_TribeVisualTypeImage value)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class _TribeVisualTypeImage implements TribeVisualType {
  const factory _TribeVisualTypeImage({required final String path}) =
      _$_TribeVisualTypeImage;

  String get path;
  @JsonKey(ignore: true)
  _$$_TribeVisualTypeImageCopyWith<_$_TribeVisualTypeImage> get copyWith =>
      throw _privateConstructorUsedError;
}
