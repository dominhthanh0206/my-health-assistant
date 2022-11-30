import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.g.dart';
part 'chat.freezed.dart';

@freezed
class Chat with _$Chat {
  factory Chat({
    String? conversationId,
    String? doctorId,
    String? patientId,
    List<Message>? messages,
    String? lastMessage,
    String? lastTime,
    bool? isActive,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}


@freezed
class Message with _$Message {
  factory Message({
    String? senderId,
    String? content,
    String? dateTime,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}