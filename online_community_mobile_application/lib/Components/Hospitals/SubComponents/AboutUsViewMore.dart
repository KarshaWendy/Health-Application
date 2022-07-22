// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/HospitalAppointmentForm.dart';

class AboutUsViewMore extends StatefulWidget {
  const AboutUsViewMore({Key? key}) : super(key: key);

  @override
  _AboutUsViewMoreState createState() => _AboutUsViewMoreState();
}

class _AboutUsViewMoreState extends State<AboutUsViewMore> {
  @override
  Widget build(BuildContext context) {
     List imgList = [  
    Image.asset('assets/icons/positions.png'),
    Image.asset('assets/icons/sand-clock.png'),
    Image.asset('assets/icons/contact.png'),
    Image.asset('assets/icons/directions.png'),
    Image.asset('assets/icons/certificate.png'),
    Image.asset('assets/icons/user.png'),
    Image.asset('assets/icons/calendar.png'),
    Image.asset('assets/icons/news.png'),
    Image.asset('assets/icons/development.png'),
    Image.asset('assets/icons/calendar.png'),
    Image.asset('assets/icons/education.png'),
  ];
    List<String> subject = ['Proximity:','Working Hours:','Emergency Contact:','Direction:','Certification and Accredition','Why choose us','Events','News','Careers','The Aga Khan University'];
    List<String> feedback = ['5Km away..','24 hours..','+2540000000', 'Limuru Road...','','','','','','',];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 50, 10, 10),
        child: Column(
          children: [
            Row(
              children:[
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
                                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                                  child: const Text(
          "The Aga Khan Hospital",
          style: TextStyle(
              color: Color(0xFF2BB9AD),
              fontSize: 22,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
                                ),]),
    
                              Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: const Text(
          "About Us",
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
                                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 10, 5, 5),
                    child: SizedBox(
                      height: 40,
                      width: 200,
                      child: ElevatedButton(
                        child: const Text(
                          "Book Appointment",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                           Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HospitalAppointmentForm(),
                        ));
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF2BB9AD)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ))),
                      ),
                    ),
                  ),
                  ],),
                  Divider(thickness: 2,height: 4,color: Colors.black,),
            Card(
              elevation: 3,
              color: Color(0xFFF8F8F8),
              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
              child: Column(
                children: [
                  for (var i = 0; i < 10; i++)
                    Row(
                      children: [
                        Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5,5,5),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor:  (Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(2), // Border radius
                            child: ClipOval(
                                child: imgList[i]),
                          ),
                        ),
                      ),
                        SizedBox(
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              subject[i],
                              style: const TextStyle(
                                  color: Color(0xFF021F68),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 150,
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                feedback[i],
                                style: const TextStyle(
                                  color: Color(0xFF474747),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
