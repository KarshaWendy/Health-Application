// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Home/MainComponents/Home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
