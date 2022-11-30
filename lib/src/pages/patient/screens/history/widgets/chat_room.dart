import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/models/chat_model/user_model.dart';
import 'package:my_health_assistant/src/models/users/doctor.dart';
import 'package:my_health_assistant/src/pages/patient/screens/history/widgets/conversation.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

import 'build_chat.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key, required this.doctor}) : super(key: key);

  @override
  State<ChatRoom> createState() => _ChatRoomState();
  final Doctor doctor;
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.doctor.fullName,
        actions: const [
          'assets/images/schedule_page/search.svg',
          'assets/images/schedule_page/more.svg',
        ],
      ),
      backgroundColor: MyColors.mainColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: ClipRRect(
                  child: Conversation(doctor: widget.doctor),
                ),
              ),
            ),
            const BuildChat(),
          ],
        ),
      ),
    );
  }
}
