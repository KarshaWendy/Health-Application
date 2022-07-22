// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/FacilitiesNearMe.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/RecentFacilities.dart';

class Facilities extends StatefulWidget {
  @override
  _FacilitiesState createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            RecentFacilities(),
            FacilitiesNearMe(),
          ],
        ),
      ),
    );
  }
}
