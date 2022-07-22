// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'AllBalanceCard.dart';
import 'InpatientCard.dart';
import 'OutpatientCard.dart';

class Balance extends StatefulWidget {
  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        OutpatientCard(),
        InpatientCard(),
        AllBalanceCard()
      ],),
      
    );
  }
}
