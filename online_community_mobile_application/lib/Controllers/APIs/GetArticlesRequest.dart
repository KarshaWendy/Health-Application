// ignore_for_file: unnecessary_new, use_key_in_widget_constructors, file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:online_community_mobile_app/Models/Media/articles_model.dart';

class GetArticlesRequest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GetArticlesRequestState();
  }
}

class GetArticlesRequestState extends State<GetArticlesRequest> {
  Future<List<ArticlesModel>> getArticles() async {
    var data = await http.get(Uri.parse('http://localhost:8080/articles'));
    var jsonData = json.decode(data.body);

    List<ArticlesModel> article = [];
    for (var a in jsonData) {
      ArticlesModel articlesModels = new ArticlesModel();
      articlesModels.id = a["id"];
      articlesModels.tags = a["tags"];
      articlesModels.author = a["author"];
      articlesModels.content = a["content"];
      articlesModels.channel = a["channel"];
      articlesModels.urlLink = a["urlLink"];
      article.add(articlesModels);
    }
    return article;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }
}
