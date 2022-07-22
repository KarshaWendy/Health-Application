// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, sized_box_for_whitespace, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Insurance/MainComponents/MemberInsurance.dart';
import 'package:online_community_mobile_app/Components/Layouts/BottomNavBar.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/InsurancePage.dart';
class MemberActivation extends StatefulWidget {
  @override
  _MemberActivationState createState() => _MemberActivationState();
}
class _MemberActivationState extends State<MemberActivation> {
  final bool _value = false;
  int val = -1;
  final GlobalKey<FormState> _passwordResetFormKey = GlobalKey<FormState>();
  late TextEditingController _insuranceController;
  late TextEditingController _phoneNumberController;

  @override
  void initState() {
    _phoneNumberController = new TextEditingController(text: "");
    _insuranceController = new TextEditingController(text: "");

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
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                 Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MemberInsuranceAccounts()),
                                      );
                // Navigator.pop(context);
              },
              child: Container(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                      child: Image.asset('assets/icons/back.png'),
                      height: 60,
                      width: 60)),
            ),
            Ink(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/resetimage.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0),
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _passwordResetFormKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Member Insurance Activation",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30.0),
                        //LOGIN EMAIL FIELD
                        TextFormField(
                          controller: _insuranceController,
                          keyboardType: TextInputType.number,
                          // validator: (value) => emailValidator(value),
                          initialValue: null,
                          // maxLength: 50,
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.numbers_rounded,
                                color: Color(0xFF2BB9AD),
                              ),
                              labelText: 'Insurance:',
                              labelStyle: const TextStyle(
                                  color: Color(0xFF2BB9AD),
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20),
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFF2BB9AD), width: 2.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF2BB9AD)),
                              ),
                              // helperText: 'Enter Your Email Address',
                              helperStyle: const TextStyle(
                                  color: Color(0xFF838383),
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16)),
                        ),
                        const SizedBox(height: 30.0),
                        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                title: Text("Email"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = _value as int;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Phone Number"),
                leading: Radio(
                  value: 2,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = _value as int;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
            ],
          ),
        
                        TextFormField(
                          controller: _phoneNumberController,
                          keyboardType: TextInputType.number,
                          // validator: (value) => emailValidator(value),
                          initialValue: null,
                          // maxLength: 50,
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.numbers_rounded,
                                color: Color(0xFF2BB9AD),
                              ),
                              labelText: 'Phone Number:',
                              labelStyle: const TextStyle(
                                  color: Color(0xFF2BB9AD),
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20),
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFF2BB9AD), width: 2.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF2BB9AD)),
                              ),
                              // helperText: 'Enter Your Email Address',
                              helperStyle: const TextStyle(
                                  color: Color(0xFF838383),
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 50, 10, 60),
                          child: ElevatedButton(
                            child: const Text(
                              "Request Activation Code",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                            //=> directToInsurancePage(),
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
                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(25, 5, 15, 5),
                                child: TextFormField(
                                  controller: _phoneNumberController,
                                  keyboardType: TextInputType.number,
                                  // validator: (value) => emailValidator(value),
                                  initialValue: null,
                                  // maxLength: 50,
                                  decoration: InputDecoration(
                                  // icon: const Icon(
                                  //   Icons.numbers_rounded,
                                  //   color: Color(0xFF2BB9AD),
                                  // ),
                                  labelText: 'Enter Code',
                                  labelStyle: const TextStyle(
                                      color: Color(0xFF2BB9AD),
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18),
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xFF2BB9AD), width: 2.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF2BB9AD)),
                                  ),
                                  // helperText: 'Enter Your Email Address',
                                  // helperStyle: const TextStyle(
                                  //     color: Color(0xFF838383),
                                  //     fontStyle: FontStyle.normal,
                                  //     fontSize: 16)
                                  ),
                                ),
                              ),
                            ),
                          
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            child: const Text(
                              "Activate",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () => directToInsurancePage(),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF2BB9AD),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
