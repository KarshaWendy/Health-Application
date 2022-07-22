// ignore_for_file: sized_box_for_whitespace, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../SubComponents/UserReview.dart';


class UserFeedback extends StatefulWidget {
  @override
  _UserFeedbackState createState() => _UserFeedbackState();
}

class _UserFeedbackState extends State<UserFeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                          child: Image.asset('assets/icons/back.png'),
                          height: 60,
                          width: 60)),
                ),
              ),
              UserReview(),
            ])));
  }
}