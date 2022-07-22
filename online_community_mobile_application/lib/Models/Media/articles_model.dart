// ignore_for_file: recursive_getters

import 'dart:convert';

ArticlesModel articlesModelJson(String str) =>
    ArticlesModel.fromJson(json.decode(str));

String articlesModelToJson(ArticlesModel data) => json.encode(data.toJson());

class ArticlesModel {
  String? id;
  String? tags;
  String? author;
  String? content;
  String? time;
  String? channel;
  String? urlLink;

  ArticlesModel(
      {this.id,
      this.tags,
      this.author,
      this.content,
      this.time,
      this.channel,
      this.urlLink});

  factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
        id: json["id"],
        tags: json["tags"],
        author: json["author"],
        content: json["content"],
        time: json["time"],
        channel: json["channel"],
        urlLink: json["urlLink"],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'tags': tags,
        'author': author,
        'content': content,
        'time': time,
        'channel': channel,
        'urlLink': urlLink
      };

  String? get tagsData => tags;
  String? get authorData => author;
  String? get contentData => content;
  String? get timeStamp => time;
  String? get channelSite => channel;
  String? get urlLinkInfo => urlLink;
}
