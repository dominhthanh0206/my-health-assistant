import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.g.dart';
part 'chat.freezed.dart';

@freezed
class ConversationModel with _$ConversationModel {
  factory ConversationModel({
    String? conversationId,
    String? doctorId,
    String? patientId,
    List<Message>? messages,
    String? lastMessage,
    String? lastTime,
    String? lastSender,
    bool? isActive,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, dynamic> json) => _$ConversationModelFromJson(json);
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