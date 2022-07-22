// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'HospitalAppointmentForm.dart';

class ServicesViewMore extends StatefulWidget {
  const ServicesViewMore({Key? key}) : super(key: key);

  @override
  _ServicesViewMoreState createState() => _ServicesViewMoreState();
}

class _ServicesViewMoreState extends State<ServicesViewMore> {
  @override
  Widget build(BuildContext context) {
 
    List<String> subject = ['Heart and Cancer Center','Princess Zahra Pavilion','Patient Services Centre','Pathology and Lab Medicine','Radiation and Image Centre','Specialty and Consulting Clinics','Outpatient Medical Centres','Cardiac Care','World Class Care in Uganda','World Class Care in Arusha'];
    return Padding(
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
                              // ignore: prefer_const_constructors
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
                                             const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
        "Services",
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
                    height: 50,
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
                            const Divider(thickness: 2,height: 4,color: Colors.black,),

           Card(
              elevation: 3,
              color: const Color(0xFFF8F8F8),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
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
                        padding: const EdgeInsets.fromLTRB(10, 2, 2, 2),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: (Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(2), // Border radius
                            child: ClipOval(
                                child: Image.asset('assets/icons/healthcare.png')),
                          ),
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Text(
                            subject[i],
                            style: const TextStyle(
                                color: Color(0xFF021F68),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        
                      ],
                    ),
                ],
              ),
            ),
          ])
    );
  }
}
