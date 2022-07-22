// ignore_for_file: file_names, use_key_in_widget_constructors, annotate_overrides

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'TermsAndConditions.dart';

class TermsOfUse extends StatefulWidget {
  @override
  _TermsOfUseState createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
  bool _value = false;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Checkbox(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value!;
            });
          },
        ),
        Flexible(
          child: RichText(
            overflow: TextOverflow.ellipsis,
            strutStyle: const StrutStyle(fontSize: 12.0),
            textAlign: TextAlign.left,
            text: TextSpan(children: <InlineSpan>[
              const TextSpan(
                  text: 'By signing up, you agree to our ',
                  style: TextStyle(color: Colors.black87)),
              TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TermsAndConditions()));
                    },
                  text: 'Terms and Conditions',
                  style: const TextStyle(
                      color: Color(0xFF2BB9AD), fontWeight: FontWeight.bold)),
            ]),
          ),
        )
      ]),
    );
  }
}
