// ignore_for_file: unnecessary_const, prefer_const_constructors, unused_local_variable, file_names

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Authentication/SubComponents/RegistrationLinks.dart';
import 'package:online_community_mobile_app/Controllers/Utils/AuthProcessor.dart';
import 'package:online_community_mobile_app/Controllers/Utils/Validators.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
    super.initState();
  }

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void signInUser() => Navigator.pushNamed(context, '/HomePage');

  @override
  Widget build(BuildContext context) {
    String? emailValidator = Validators.validateEmail('');
    String? passwordValidator = Validators.validatePassword('');
    const signIn = AuthProcessor.userSignIn;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Ink(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/white1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.0),
                padding: const EdgeInsets.all(25.0),
                child: Form(
                  key: _loginFormKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30.0),
                        CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage(
                              'assets/images/logo.png',
                            )),
                        const SizedBox(height: 50.0),
                        const Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Color(0xFF2BB9AD),
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30.0),

                        //LOGIN EMAIL FIELD
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) => emailValidator!,
                          initialValue: null,
                          // maxLength: 50,
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.email_rounded,
                                color: Color(0xFF2BB9AD),
                              ),
                              labelText: 'Email:',
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
                        const SizedBox(height: 20.0),

                        //LOGIN PASSWORD FIELD
                        TextFormField(
                          controller: _passwordController,
                          validator: (value) => passwordValidator!,
                          obscureText: _obscureText,
                          initialValue: null,
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.lock_clock_rounded,
                                color: Color(0xFF2BB9AD),
                              ),
                              labelText: 'Password:',
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
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: _toggle,
                                color: const Color(0xFF2BB9AD),
                              ),
                              // helperText: 'Passwords should be 8 characters long',
                              helperStyle: const TextStyle(
                                  color: Color(0xFF838383),
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 30, 50, 20),
                          child: ElevatedButton(
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              // if (_loginFormKey.currentState!.validate()) {
                              //   signInUser();
                              // }
                              signInUser();
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF2BB9AD)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45.0),
                                ))),
                          ),
                        ),
                        RegistrationLink(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
