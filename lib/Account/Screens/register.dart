// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'otpscreen.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  final _mobileController = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    print(_mobileController.text.length);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 138, 8),
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Form(
          key: formGlobalKey,
          child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Center(
                    child: Image.asset(
                  'assets/images/sahitya.png',
                  width: 230,
                  height: 250,
                )),
                SizedBox(
                  height: 35,
                ),
                Center(
                    // child: Text(
                    //   "Shop Confidently, Pay it Later",
                    //   style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    // ),
                    ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  onChanged: (value) {
                    // MobileData.onType(value);
                  },
                  controller: _mobileController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'plese enter Phoner number';
                    }
                    //else if (value.isNotEmpty) {
                    //   bool mobileValid =
                    //       RegExp(r'^(01)[0-46-9]*[0-9]{7,8}$').hasMatch(value);
                    //   return mobileValid ? null : "Invalid mobile";
                    // }
                    return null;
                  },
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Mobile Number",
                    hintText: "Mobile Number",
                    floatingLabelStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                    prefixStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 163, 59), width: 1.2),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 162, 161, 150),
                          width: 1.2),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ConfirmOtp()));
                  },
                  child: Text('Next'),
                )
              ]),

          //     return SizedBox(
          //       height: 56,
          //       width: double.infinity,
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //           // ignore: prefer_const_constructors
          //           primary: Color(primary_color),

          //           elevation: 2,
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(35),
          //           ),
          //         ),
          //         onPressed: mobileNo.isNotEmpty
          //             ? () {
          //                 if (formGlobalKey.currentState!.validate()) {
          //                   _register();
          //                 }
          //               }
          //             : null,
          //         child: Text(
          //           "Next",
          //           style: TextStyle(
          //             fontSize: 17,
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       ),
          //     );
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
