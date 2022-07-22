// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/SpouseCard.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/SelfCard.dart';
import 'ChildCard.dart';

class CoveredMembersInsured extends StatefulWidget {
  @override
  _CoveredMembersInsuredState createState() => _CoveredMembersInsuredState();
}

class _CoveredMembersInsuredState extends State<CoveredMembersInsured> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              labelColor: Color(0xFF2BB9AD),
              indicatorColor: Color(0xFF2BB9AD),
              tabs: [
                Tab(text: ('Self')),
                Tab(text: ('Spouse')),
                Tab(text: ('Children')),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SelfCard(),
              SpouseCard(),
              ChildCard(),
            ],
          ),
        ),
      ),
    );
  }
}
