import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_health_assistant/src/pages/doctor/article/component/container_of_content.dart';
import 'package:my_health_assistant/src/pages/doctor/article/component/custom_topic_container.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

import 'package:my_health_assistant/src/styles/font_styles.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

const List<String> item = ['Medical', 'Health', 'Covid-19', 'Lifestyle'];

class PostTopicScreen extends StatefulWidget {
  const PostTopicScreen({Key? key}) : super(key: key);

  @override
  State<PostTopicScreen> createState() => _PostTopicScreenState();
}

class _PostTopicScreenState extends State<PostTopicScreen> {
  final TextEditingController _titleTopic = TextEditingController();
  final TextEditingController _content = TextEditingController();
  File? image;
  String? getTextTopic;
  // final type = ValueNotifier<String?>(null);
  String type = '';
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Create New Topic'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Topic Title',
                  style: MyFontStyles.blackColorH1,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _titleTopic,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.topic_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      hintText: 'Your Topic Title',
                      hintStyle: const TextStyle(
                          color: MyColors.greyText,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Type',
                  style: MyFontStyles.blackColorH1,
                ),
                const SizedBox(height: 10),
                SizedBox(
                    height: 40,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: item.length,
                        itemBuilder: (context, index) {
                          type = item[selectedIndex];
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: CustomTopicContainer(
                              hour: item[index],
                              buttonColor: selectedIndex == index
                                  ? MyColors.mainColor
                                  : MyColors.whiteText,
                              textColor: selectedIndex == index
                                  ? MyColors.whiteText
                                  : MyColors.mainColor,
                            ),
                          );
                        })),
                const SizedBox(height: 25),
                const Text(
                  'Content',
                  style: MyFontStyles.blackColorH1,
                ),
                const SizedBox(height: 10),
                ContainerOfContent(
                  content: _content,
                  image: image,
                  onPressed: () async {
                    final images = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (images == null) {
                      return;
                    }
                    final imageTemporary = File(images.path);
                    setState(() {
                      image = imageTemporary;
                    });
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 6),
                SizedBox(
                    width: double.infinity,
                    child: RawMaterialButton(
                      elevation: 0.0,
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                      fillColor: const Color(0XFF0069FE),
                      onPressed: () {
                        log(image.toString());
                        log(type);
                        log(_titleTopic.text);
                        log(_content.text);
                      },
                      child: Text(
                        "Post",
                        style: MyFontStyles.whiteColorH1.copyWith(fontSize: 20),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
