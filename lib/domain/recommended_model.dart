import 'dart:convert';

import 'package:equatable/equatable.dart';

class RecommendedModel extends Equatable {
  final String img;
  final String tag;
  final String title;
  final String author;
 const  RecommendedModel({
    required this.img,
    required this.tag,
    required this.title,
    required this.author,
  });

  RecommendedModel copyWith({
    String? img,
    String? tag,
    String? title,
    String? author,
  }) {
    return RecommendedModel(
      img: img ?? this.img,
      tag: tag ?? this.tag,
      title: title ?? this.title,
      author: author ?? this.author,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'img': img});
    result.addAll({'tag': tag});
    result.addAll({'title': title});
    result.addAll({'author': author});
  
    return result;
  }

  factory RecommendedModel.fromMap(Map<String, dynamic> map) {
    return RecommendedModel(
      img: map['img'] ?? '',
      tag: map['tag'] ?? '',
      title: map['title'] ?? '',
      author: map['author'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RecommendedModel.fromJson(String source) => RecommendedModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RecommendedModel(img: $img, tag: $tag, title: $title, author: $author)';
  }

  @override
  List<Object> get props => [img, tag, title, author];
}
