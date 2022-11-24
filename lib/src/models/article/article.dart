import 'package:freezed_annotation/freezed_annotation.dart';
part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article{
  const factory Article({
    String? doctorID,
    String? doctorName,
    String? key,
    String? title,
    String? content,
    String? imageUrl,
    String? time,
    String? category
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}