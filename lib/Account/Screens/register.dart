// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'otpscreen.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _mobileController = TextEditingController();
  final _otpController = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 238, 138, 8),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Form(
          key: formGlobalKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Center(
                        child: Image.asset(
                      'assets/images/sahitya.png',
                      width: 400,
                      height: 350,
                    )),
                    TextFormField(
                      onChanged: (value) {
                        // MobileData.onType(value);
                      },
                      controller: _mobileController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'plese enter Phoner number';
                        }
                        return null;
                      },
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Mobile Number",
                        fillColor: Colors.white70,
                        prefixStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConfirmOtp()));
                        },
                        child: Text("Login",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, bottom: 0.0),
                  child: Text(
                    "WELCOME TO SAMAJ DARPAN",
                    style: TextStyle(
                      fontSize: 20.0,
                      shadows: const [
                        Shadow(color: Colors.black, offset: Offset(0, -5))
                      ],
                      color: Colors.transparent,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                      decorationThickness: 4,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  // _register() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setString("mobilenumber", _mobileController.text);
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => Password()));
  // }
}
