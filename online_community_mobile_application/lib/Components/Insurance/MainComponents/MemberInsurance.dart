// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, sized_box_for_whitespace, file_names, unused_import, unused_element

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Insurance/MainComponents/MemberActivation.dart';
import 'package:online_community_mobile_app/Components/Layouts/BottomNavBar.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/InsurancePage.dart';

import '../SubComponents/FirstIsurance.dart';
import '../SubComponents/SecondInsurance.dart';

class MemberInsuranceAccounts extends StatefulWidget {
  @override
  _MemberInsuranceAccountsState createState() =>
      _MemberInsuranceAccountsState();
}

class _MemberInsuranceAccountsState extends State<MemberInsuranceAccounts> {
  int val = -1;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void directToInsurancePage() =>
        //Navigator.of(context, rootNavigator: true)
        //     .pushNamedAndRemoveUntil("/InsurancePage", (route) => false);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InsurancePage()),
        );

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              InkWell(
                onTap: () {
                   Navigator.pop(context);
                },
                child: Container(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                        child: Image.asset('assets/icons/back.png'),
                        height: 60,
                        width: 60)),
              ),
              Padding(
                  padding:
                      const EdgeInsets.fromLTRB(0, 5, 10, 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 150, 10),
                          child: Text(
                            "Insurance Accounts",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                         FirstIsurance(),
                         SecondInsurance(),
                         Padding(
                          padding: const EdgeInsets.fromLTRB(10, 50, 10, 60),
                          child: ElevatedButton(
                            child: const Text(
                              "Add Account",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                               Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => MemberActivation(),
                    ),
                  );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF2BB9AD),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ),
                      ]))
            ])));
  }
}
