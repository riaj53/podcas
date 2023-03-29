import 'dart:convert';

import 'package:equatable/equatable.dart';

class PodcastsModel extends Equatable {
 final String tag;
  final String img;
  final String title;
  final String desc;
  final int time;
 const  PodcastsModel({
    required this.tag,
    required this.img,
    required this.title,
    required this.desc,
    required this.time,
  });

  PodcastsModel copyWith({
    String? tag,
    String? img,
    String? title,
    String? desc,
    int? time,
  }) {
    return PodcastsModel(
      tag: tag ?? this.tag,
      img: img ?? this.img,
      title: title ?? this.title,
      desc: desc ?? this.desc,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'tag': tag});
    result.addAll({'img': img});
    result.addAll({'title': title});
    result.addAll({'desc': desc});
    result.addAll({'time': time});
  
    return result;
  }

  factory PodcastsModel.fromMap(Map<String, dynamic> map) {
    return PodcastsModel(
      tag: map['tag'] ?? '',
      img: map['img'] ?? '',
      title: map['title'] ?? '',
      desc: map['desc'] ?? '',
      time: map['time']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PodcastsModel.fromJson(String source) => PodcastsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PodcastsModel(tag: $tag, img: $img, title: $title, desc: $desc, time: $time)';
  }

  @override
  List<Object> get props {
    return [
      tag,
      img,
      title,
      desc,
      time,
    ];
  }
}
