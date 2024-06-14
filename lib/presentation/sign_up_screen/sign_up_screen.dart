import 'package:flutter/material.dart';
import '../home_screen/home_screen.dart';
import '../login_screen/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
          leading: const BackButton(),
          centerTitle: true,
        ),
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Image.asset(
                  'assets/simo_logo.jpg',
                  scale: 2,
                ),
                const SizedBox(height: 30),
                Container(
                  height: 555,
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
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
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
                                  Radius.circular(5.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              hintText: 'Surname',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(196, 196, 196, 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                            'Surname must correspond with your bank details to process a successful withdrawal.'),
                        const SizedBox(height: 8),
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
                                  Radius.circular(5.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              hintText: 'Other name',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(196, 196, 196, 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                            'Other names must correspond with your bank details to process a successful withdrawal.'),
                        const SizedBox(height: 8),
                        _buildPhoneNumberField(),
                        const SizedBox(height: 8),
                        const Text(
                            'Exlude the first zero (0) of your phone number. Use a functional mobile number.'),
                        const SizedBox(height: 8),
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
                                  Radius.circular(5.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              hintText: 'Phone number or Email',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(196, 196, 196, 1),
                              ),
                            ),
                          ),
                        ),
                        const _buildTermsAndConditions(),
                        SizedBox(
                          width: double.infinity,
                          height: kToolbarHeight,
                          child: TextButton(
                            onPressed: () {
                              // FocusManager.instance.primaryFocus?.unfocus();
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                                (Route<dynamic> route) => false,
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(255, 145, 64, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              'SIGN UP',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "already have an account?",
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
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "SIGN IN HERE",
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
    );
  }
}

Widget _buildPhoneNumberField() {
  final List<String> countryCodes = [
    '+1',
    '+91',
    '+44',
    '+61',
    '+81',
  ]; // Add more country codes as needed
  String selectedCountryCode = 'Country Code';

  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return SizedBox(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: PopupMenuButton<String>(
                onSelected: (String value) {
                  setState(
                    () {
                      selectedCountryCode = value;
                    },
                  );
                },
                itemBuilder: (BuildContext context) {
                  return countryCodes.map<PopupMenuItem<String>>(
                    (String value) {
                      return PopupMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      selectedCountryCode,
                      style: const TextStyle(color: Colors.black),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Color.fromRGBO(255, 145, 64, 1),
                    ),
                  ],
                ),
              ),
            ),
            filled: true,
            fillColor: Colors.white30,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            hintText: 'Phone Number',
            hintStyle: const TextStyle(
              color: Color.fromRGBO(196, 196, 196, 1),
            ),
          ),
        ),
      );
    },
  );
}

// ignore: camel_case_types
class _buildTermsAndConditions extends StatefulWidget {
  // ignore: unused_element
  const _buildTermsAndConditions({super.key});

  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<_buildTermsAndConditions> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Transform.scale(
                scale:
                    1.2, // Adjust this value to change the size of the checkbox
                child: Checkbox(
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
                    width: 2.0, // Border width
                  ),
                ),
              ),
              const SizedBox(
                width: 1,
              ), // Add spacing between the checkbox and text
              const Text(
                'I accept terms and conditions',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
