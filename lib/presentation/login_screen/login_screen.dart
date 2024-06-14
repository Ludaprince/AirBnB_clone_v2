import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';
import '../sign_up_screen/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'SIGN IN',
            style: TextStyle(
              color: Colors.black, // Customize the color of the text
              fontSize: 18, // Customize the font size
              fontWeight: FontWeight.bold, // Customize the font weight
            ),
          ),
          centerTitle: true, // Center the title
          // backgroundColor: Colors.blue, // Customize the background color
          elevation: 0, // Remove shadow under the app bar
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Form(
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 20,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/simo_logo.jpg',
                    scale: 2,
                  ),
                  const SizedBox(height: 46),
                  Container(
                    height: 400,
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                      border: const Border(
                        top: BorderSide(
                          // color: Colors.black,
                          width: 1,
                        ),
                        left: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          // blurRadius: 4,
                          color: Colors.grey.shade300,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 14),
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              // controller: ,
                              textAlignVertical: TextAlignVertical.center,
                              onTap: () {},
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white30,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText:
                                    'input your phone or email or access ID',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              // controller: ,
                              textAlignVertical: TextAlignVertical.center,
                              onTap: () {},
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white30,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                hintText: 'input AccessPin',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                ),
                              ),
                            ),
                          ),
                          const _BuildTermsAndConditionsForgetPassword(),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            height: kToolbarHeight,
                            child: TextButton(
                              onPressed: () {
                                // FocusManager.instance.primaryFocus?.unfocus();
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HomeScreen(),
                                  ),
                                  (Route<dynamic> route) => false,
                                );
                              },
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(255, 145, 64, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text(
                                'SIGN IN',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            "Not a registered member on simolottery?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "SIGN UP HERE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 145, 64, 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget buildAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 48,
  );
}

// ignore: camel_case_types
class _BuildTermsAndConditionsForgetPassword extends StatefulWidget {
  // ignore: unused_element
  const _BuildTermsAndConditionsForgetPassword({super.key});

  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<_BuildTermsAndConditionsForgetPassword> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(
                    () {
                      _isChecked = value ?? false;
                    },
                  );
                },
                activeColor: const Color.fromRGBO(
                    255, 145, 64, 1), // Color when checkbox is checked
                checkColor: Colors.white, // Color of the check mark
                side: const BorderSide(
                  color: Color.fromRGBO(255, 145, 64, 1),
                  width: 2.0,
                ),
              ),
              const Text('Accept T&C'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: GestureDetector(
            child: const Text(
              'forgot Access Pin',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(255, 145, 64, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
