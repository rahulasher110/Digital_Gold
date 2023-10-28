import 'package:digital_gold/screens/auth_screen/otp_verification_screen.dart';
import 'package:digital_gold/utils/app_colors.dart';
import 'package:digital_gold/widgets/dg-button.dart';
import 'package:digital_gold/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _mobileCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.focusScope?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(backgroundColor: AppColors.primaryColor, elevation: 0),
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20).copyWith(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                regularText(
                    text: AppStrings.enterMobileNumber,
                    size: 26,
                    fontWeight: FontWeight.bold),
                const SizedBox(height: 16),
                regularText(
                  text: AppStrings.otpToRegisteredMobileNumber,
                  size: 12,
                  color: AppColors.primaryTextColor,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _mobileCtrl,
                  autofocus: false,
                  style: const TextStyle(
                      fontSize: 22.0, color: AppColors.primaryColor),
                  maxLength: 10,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefix: const Text(
                        '+91 | ',
                        style: TextStyle(
                            color: AppColors.primaryColor, fontSize: 20),
                      )),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: 'By proceeding, I agree to ',
                    style: TextStyle(color: AppColors.secondaryTextColor)),
                TextSpan(
                    text: 'Privacy policy ',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColors.primaryTextColor)),
                TextSpan(
                    text: '& ',
                    style: TextStyle(color: AppColors.secondaryTextColor)),
                TextSpan(
                    text: 'TnC ',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColors.primaryTextColor)),
                TextSpan(
                    text: 'here.',
                    style: TextStyle(color: AppColors.secondaryTextColor))
              ])),
              const SizedBox(height: 10),
              DgButton(
                buttonName: 'Proceed',
                onPressed: () => Get.to(() => OtpVerificationScreen(
                      mobileNumber: _mobileCtrl.text,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
