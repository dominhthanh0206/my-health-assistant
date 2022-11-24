// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      doctorID: json['doctorID'] as String?,
      doctorName: json['doctorName'] as String?,
      key: json['key'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      imageUrl: json['imageUrl'] as String?,
      time: json['time'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'doctorID': instance.doctorID,
      'doctorName': instance.doctorName,
      'key': instance.key,
      'title': instance.title,
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'time': instance.time,
      'category': instance.category,
    };
