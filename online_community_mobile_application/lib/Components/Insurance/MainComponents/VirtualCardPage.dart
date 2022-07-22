// ignore_for_file: file_names

import 'package:flutter/material.dart';

class VirtualCardPage extends StatefulWidget {
  const VirtualCardPage({Key? key}) : super(key: key);

  @override
  _VirtualCardPageState createState() => _VirtualCardPageState();
}

class _VirtualCardPageState extends State<VirtualCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children:[
        const Padding(
          padding: EdgeInsets.fromLTRB(10,40,10, 10),
          child: Card(elevation: 3,color: Color.fromARGB(255, 224, 222, 222),
          child: SizedBox(
            height: 200,width: 500,
          child: Center(child: Text("Virtual Card",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),)
          ),
          ),),
        ),
       Padding(
                          padding: const EdgeInsets.fromLTRB(50, 40, 50, 50),
                          child: ElevatedButton(
                            child: const Text(
                              "Initiate Visit",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF2BB9AD),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ),])
    );
  }
}
