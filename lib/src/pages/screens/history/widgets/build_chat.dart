import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/history/widgets/attach_card.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';

class BuildChat extends StatelessWidget {
  const BuildChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      height: 100,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey[500],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type a message ...',
                        hintStyle:
                            MyFontStyles.normalGreyText.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                                margin: const EdgeInsets.only(
                                    bottom: 90, left: 20, right: 20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AttachCard(
                                          onPressed: () => log('Document'),
                                          color: Colors.orangeAccent,
                                          icon:
                                              'assets/images/message_screen/google-docs_1.svg',
                                          title: 'Document'),
                                      AttachCard(
                                          onPressed: () => log('Gallery'),
                                          color: Colors.greenAccent,
                                          icon:
                                              'assets/images/message_screen/gallery_1.svg',
                                          title: 'Gallery'),
                                      AttachCard(
                                          onPressed: () => log('Audio'),
                                          color: Colors.pinkAccent,
                                          icon:
                                              'assets/images/message_screen/headphone-symbol_1.svg',
                                          title: 'Audio'),
                                    ],
                                  ),
                                )),
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.attach_file,
                      color: Colors.grey[500],
                    ),
                  ),
                  // const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      log('camera');
                    },
                    icon: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const CircleAvatar(
            backgroundColor: MyColors.mainColor,
            child: Icon(
              Icons.mic,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
