// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UserReview extends StatefulWidget {
  @override
  _UserReviewState createState() => _UserReviewState();
}

class _UserReviewState extends State<UserReview> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: const Text("Give Feedback",style: TextStyle(fontSize: 23,decorationThickness: double.maxFinite,decorationColor: Color(0xFF2BB9AD),color: Color(0xFF2BB9AD))),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Please rate the Service Quality!",style: TextStyle(fontSize: 18,decorationThickness: double.maxFinite,decorationColor: Color(0xFF2BB9AD))),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: RatingBar(
                      initialRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      ratingWidget: RatingWidget(
                          full: const Icon(Icons.star, color: Colors.yellow),
                          half: const Icon(
                            Icons.star_half,
                            color: Colors.yellow,
                          ),
                          empty: const Icon(
                            Icons.star_outline,
                            color: Colors.yellow,
                          )),
                      onRatingUpdate: (value) {
                        setState(() {
                        });
}),
        ),
         const Padding(
           padding: EdgeInsets.all(20.0),
           child: Text("Do you have any additional thoughts to share? (Optional)",style: TextStyle(fontSize: 15,decorationThickness: double.maxFinite,decorationColor: Color(0xFF2BB9AD)),textAlign: TextAlign.center,),
         ),
         SizedBox(
                        width: 300,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                       
                          // validator: (value) => emailValidator(value!),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xFF2BB9AD)),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: "Enter your comments here..",
                            hintStyle: const TextStyle(
                              color: Color(0xFF2BB9AD),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                Padding(
                      padding: const EdgeInsets.fromLTRB(50, 5, 5, 50),
                      child: SizedBox(
                        height: 30,
                        width: 120,
                        child: ElevatedButton(
                          child: const Text(
                            "Share",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            //directToHome();
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xFF2BB9AD)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45.0),
                              ))),
                        ),
                      ),
                    ), 
      ],),
    );
  }
}
