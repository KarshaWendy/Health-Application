// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class FaqQuestion extends StatefulWidget {
  @override
  _FaqQuestionState createState() => _FaqQuestionState();
}

class _FaqQuestionState extends State<FaqQuestion> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ExpansionTile(
        title: Text(
          'What will happen if my card is lost?',
          style: TextStyle(
            color: Color(0xFF2BB9AD),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Report the loss to your HR department immediately you notice the loss. The card can however not be used by any other person provided the fingerprints have been saved onto the cards',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      ExpansionTile(
        title: Text(
          'What will happen if my card is damaged?',
          style: TextStyle(
            color: Color(0xFF2BB9AD),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Report the card damage as soon as possible to your HR department.The card is your ATM to healthcare access, therefore you should always have it to access the services in a healthcare facility',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      ExpansionTile(
        title: Text(
          'What happens incase a person is too ill to present their finger?',
          style: TextStyle(
            color: Color(0xFF2BB9AD),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'The hosital will notify the scheme administrator. He/she will authorize treatment without use of the card.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      ExpansionTile(
        title: Text(
          'What if I change my mobile number?',
          style: TextStyle(
            color: Color(0xFF2BB9AD),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Update it on the profile then try logging in again. Remember to update the insurance page also. However, If you encounter any challenges please reach out for assistance.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      ExpansionTile(
        title: Text(
          'What happens if I forget my card at home?',
          style: TextStyle(
            color: Color(0xFF2BB9AD),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'The card is your ATM to healthcare access, therefore you should always carry it with you at all times.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      ExpansionTile(
        title: Text(
          'What happens if my child is taken to hospital by someone whose fingerprints are not in the card?',
          style: TextStyle(
            color: Color(0xFF2BB9AD),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Authorization once given by the scheme administrator will allow the MSP to grant service outside the smart system',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      ExpansionTile(
        title: Text('Can I be able to view my family member balances?',style:TextStyle(color: Color(0xFF2BB9AD),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0, ),),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Yes, as the principal member, you will be able to view the balances for each member of the family',
            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0, ),),
          ),
           
          
        ],),
        ExpansionTile(
        title: Text('Do I have to register first in order to access my member balance?',style:TextStyle(color: Color(0xFF2BB9AD),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0, ),),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Yes, registration is a mandatory process as the membership number is tied to the mobile number for secuirty and cnfidentiality purposes',
            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0, ),),
          ),
           
          
        ],),
      ExpansionTile(
        title: Text(
          'How do I get treated if my card is not working at the hospital?',
          style: TextStyle(
            color: Color(0xFF2BB9AD),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'The scheme administrator will have to be informed. He/She will advice on the action the healthcare provider will take',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
      ExpansionTile(
        title: Text(
          'How do I take care of my Smart Card?',
          style: TextStyle(
            color: Color(0xFF2BB9AD),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'The Smart Card is an electronic card. Like all electronic cards the same rules apply;\n- Do not break the Smart Card\n- Do not bend the Smart Card\n- Avoid sitting on the Smart card in your wallet\n- Please handle your Smart Card properly as you will need it to access medical services at all times',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
