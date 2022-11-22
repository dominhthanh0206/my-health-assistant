import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_health_assistant/src/pages/doctor/article/component/article_object.dart';
import 'package:my_health_assistant/src/pages/doctor/article/component/list_articles.dart';
import 'package:my_health_assistant/src/pages/doctor/article/post_topic_screen.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/title_tabbar.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen>
    with TickerProviderStateMixin {
  List<ArticleObject> covidCategory = [];
  List<ArticleObject> healthCategory = [];
  List<ArticleObject> lifestyleCategory = [];
  List<ArticleObject> medicalCategory = [];

  @override
  void initState() {
    super.initState();
    covidCategory =
        listArticle.where((element) => element.category == 'Covid-19').toList();
    healthCategory =
        listArticle.where((element) => element.category == 'Health').toList();
    lifestyleCategory = listArticle
        .where((element) => element.category == 'Lifestyle')
        .toList();
    medicalCategory =
        listArticle.where((element) => element.category == 'Medical').toList();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.whiteText,
        elevation: 0.0,
        leading:
            SvgPicture.asset('assets/images/main_icon.svg', color: Colors.blue),
        title: const Text(
          "Article",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Articles',
                  style: MyFontStyles.blackColorH1.copyWith(fontSize: 20),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostTopicScreen(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColors.lightBlue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add_circle,
                            color: MyColors.mainColor,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Create New Topic',
                            style: MyFontStyles.mainColorH4,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 30,
              child: TabBar(
                controller: tabController,
                labelColor: MyColors.whiteText,
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: const EdgeInsets.symmetric(horizontal: 6),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: MyColors.mainColor),
                tabs: const [
                  TabbarTitle(title: 'All'),
                  TabbarTitle(title: 'Medical'),
                  TabbarTitle(title: 'Health'),
                  TabbarTitle(title: 'Covid-19'),
                  TabbarTitle(title: 'Lifestyle'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ListArticles(
                  articles: listArticle,
                ),
                ListArticles(
                  articles: medicalCategory,
                ),
                ListArticles(
                  articles: healthCategory,
                ),
                ListArticles(
                  articles: covidCategory,
                ),
                ListArticles(
                  articles: lifestyleCategory,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
