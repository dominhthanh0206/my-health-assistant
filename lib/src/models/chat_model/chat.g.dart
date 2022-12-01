// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConversationModel _$$_ConversationModelFromJson(Map<String, dynamic> json) =>
    _$_ConversationModel(
      conversationId: json['conversationId'] as String?,
      doctorId: json['doctorId'] as String?,
      patientId: json['patientId'] as String?,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMessage: json['lastMessage'] as String?,
      lastTime: json['lastTime'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$$_ConversationModelToJson(
        _$_ConversationModel instance) =>
    <String, dynamic>{
      'conversationId': instance.conversationId,
      'doctorId': instance.doctorId,
      'patientId': instance.patientId,
      'messages': instance.messages,
      'lastMessage': instance.lastMessage,
      'lastTime': instance.lastTime,
      'isActive': instance.isActive,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      senderId: json['senderId'] as String?,
      content: json['content'] as String?,
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'content': instance.content,
      'dateTime': instance.dateTime,
    };
