// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConversationModel _$ConversationModelFromJson(Map<String, dynamic> json) {
  return _ConversationModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationModel {
  String? get conversationId => throw _privateConstructorUsedError;
  String? get doctorId => throw _privateConstructorUsedError;
  String? get patientId => throw _privateConstructorUsedError;
  List<Message>? get messages => throw _privateConstructorUsedError;
  String? get lastMessage => throw _privateConstructorUsedError;
  String? get lastTime => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationModelCopyWith<ConversationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationModelCopyWith<$Res> {
  factory $ConversationModelCopyWith(
          ConversationModel value, $Res Function(ConversationModel) then) =
      _$ConversationModelCopyWithImpl<$Res, ConversationModel>;
  @useResult
  $Res call(
      {String? conversationId,
      String? doctorId,
      String? patientId,
      List<Message>? messages,
      String? lastMessage,
      String? lastTime,
      bool? isActive});
}

/// @nodoc
class _$ConversationModelCopyWithImpl<$Res, $Val extends ConversationModel>
    implements $ConversationModelCopyWith<$Res> {
  _$ConversationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = freezed,
    Object? doctorId = freezed,
    Object? patientId = freezed,
    Object? messages = freezed,
    Object? lastMessage = freezed,
    Object? lastTime = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastTime: freezed == lastTime
          ? _value.lastTime
          : lastTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConversationModelCopyWith<$Res>
    implements $ConversationModelCopyWith<$Res> {
  factory _$$_ConversationModelCopyWith(_$_ConversationModel value,
          $Res Function(_$_ConversationModel) then) =
      __$$_ConversationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? conversationId,
      String? doctorId,
      String? patientId,
      List<Message>? messages,
      String? lastMessage,
      String? lastTime,
      bool? isActive});
}

/// @nodoc
class __$$_ConversationModelCopyWithImpl<$Res>
    extends _$ConversationModelCopyWithImpl<$Res, _$_ConversationModel>
    implements _$$_ConversationModelCopyWith<$Res> {
  __$$_ConversationModelCopyWithImpl(
      _$_ConversationModel _value, $Res Function(_$_ConversationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = freezed,
    Object? doctorId = freezed,
    Object? patientId = freezed,
    Object? messages = freezed,
    Object? lastMessage = freezed,
    Object? lastTime = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_ConversationModel(
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastTime: freezed == lastTime
          ? _value.lastTime
          : lastTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConversationModel implements _ConversationModel {
  _$_ConversationModel(
      {this.conversationId,
      this.doctorId,
      this.patientId,
      final List<Message>? messages,
      this.lastMessage,
      this.lastTime,
      this.isActive})
      : _messages = messages;

  factory _$_ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationModelFromJson(json);

  @override
  final String? conversationId;
  @override
  final String? doctorId;
  @override
  final String? patientId;
  final List<Message>? _messages;
  @override
  List<Message>? get messages {
    final value = _messages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? lastMessage;
  @override
  final String? lastTime;
  @override
  final bool? isActive;

  @override
  String toString() {
    return 'ConversationModel(conversationId: $conversationId, doctorId: $doctorId, patientId: $patientId, messages: $messages, lastMessage: $lastMessage, lastTime: $lastTime, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationModel &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastTime, lastTime) ||
                other.lastTime == lastTime) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      conversationId,
      doctorId,
      patientId,
      const DeepCollectionEquality().hash(_messages),
      lastMessage,
      lastTime,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationModelCopyWith<_$_ConversationModel> get copyWith =>
      __$$_ConversationModelCopyWithImpl<_$_ConversationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationModelToJson(
      this,
    );
  }
}

abstract class _ConversationModel implements ConversationModel {
  factory _ConversationModel(
      {final String? conversationId,
      final String? doctorId,
      final String? patientId,
      final List<Message>? messages,
      final String? lastMessage,
      final String? lastTime,
      final bool? isActive}) = _$_ConversationModel;

  factory _ConversationModel.fromJson(Map<String, dynamic> json) =
      _$_ConversationModel.fromJson;

  @override
  String? get conversationId;
  @override
  String? get doctorId;
  @override
  String? get patientId;
  @override
  List<Message>? get messages;
  @override
  String? get lastMessage;
  @override
  String? get lastTime;
  @override
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationModelCopyWith<_$_ConversationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String? get senderId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({String? senderId, String? content, String? dateTime});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? content = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? senderId, String? content, String? dateTime});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? content = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$_Message(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  _$_Message({this.senderId, this.content, this.dateTime});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final String? senderId;
  @override
  final String? content;
  @override
  final String? dateTime;

  @override
  String toString() {
    return 'Message(senderId: $senderId, content: $content, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, senderId, content, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  factory _Message(
      {final String? senderId,
      final String? content,
      final String? dateTime}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String? get senderId;
  @override
  String? get content;
  @override
  String? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
