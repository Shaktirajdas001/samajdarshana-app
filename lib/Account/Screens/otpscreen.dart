// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:heroicons/heroicons.dart';

import 'home.dart';

class ConfirmOtp extends StatefulWidget {
  const ConfirmOtp({Key? key}) : super(key: key);

  @override
  State<ConfirmOtp> createState() => _ConfirmOtpState();
}

class _ConfirmOtpState extends State<ConfirmOtp> {
  get otpTextStyles => null;
  final _otpController = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 138, 8),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
            child: Form(
              key: formGlobalKey,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: HeroIcon(
                          HeroIcons.arrowNarrowLeft,
                          color: Color.fromARGB(255, 238, 138, 8),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Confirm OTP ',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'A 4-digit OTP has been sent to',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '+91 8328891475',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  OtpTextField(
                      numberOfFields: 4,
                      showFieldAsBox: false,
                      borderColor: Colors.black,
                      focusedBorderColor: Colors.black,
                      borderWidth: 2.0,
                      textStyle:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Resend OTP (50s)',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 154, 152, 152),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 215, 208, 198),
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          )),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
