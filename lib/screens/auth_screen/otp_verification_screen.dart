import 'package:digital_gold/screens/dashboard_screen.dart';
import 'package:digital_gold/utils/app_colors.dart';
import 'package:digital_gold/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utils/app_strings.dart';
import '../../widgets/dg-button.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String mobileNumber;
  const OtpVerificationScreen({super.key, required this.mobileNumber});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: _appBarWidget(),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20).copyWith(top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _title(),
              const SizedBox(height: 20),
              _otpSentMessage(),
              const SizedBox(height: 20),
              _otpPinFeild()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DgButton(
                buttonName: 'Verify',
                onPressed: () => Get.offAll(DashboardPage())),
          ],
        ),
      ),
    );
  }

  AppBar _appBarWidget() {
    return AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.chevron_left_rounded,
            size: 40,
            color: AppColors.secondaryTextColor,
          ),
        ));
  }

  Widget _title() {
    return regularText(
        text: 'Mobile Number Verification',
        size: 20,
        fontWeight: FontWeight.bold);
  }

  Widget _otpSentMessage() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      regularText(text: AppStrings.otpSentMessage, size: 16),
      const SizedBox(height: 15),
      Row(children: [
        Expanded(
          child: regularText(size: 16, text: '+91 ${widget.mobileNumber}'),
        ),
        const SizedBox(width: 10),
      ])
    ]);
  }

  Widget _otpPinFeild() {
    return PinCodeTextField(
      controller: _textEditingController,
      scrollPadding: const EdgeInsets.all(4),
      appContext: context,
      textStyle: const TextStyle(color: AppColors.primaryTextColor),
      pastedTextStyle: const TextStyle(
        color: AppColors.secondaryTextColor,
        fontWeight: FontWeight.bold,
      ),
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      validator: (v) {
        if (v!.length < 6) {
          return 'Enter 6 digit otp';
        }
        return null;
      },
      onSaved: (v) {
        setState(() {});
      },
      errorTextSpace: 25,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      pinTheme: PinTheme(
        inactiveFillColor: AppColors.secondaryTextColor,
        activeFillColor: AppColors.secondaryTextColor,
        activeColor: AppColors.secondaryTextColor,
        selectedFillColor: AppColors.secondaryTextColor,
        borderRadius: BorderRadius.circular(8),
        inactiveColor: Colors.grey.withAlpha(150),
        selectedColor: AppColors.secondaryTextColor,
        shape: PinCodeFieldShape.box,
        borderWidth: 1,
      ),
      cursorColor: AppColors.secondaryTextColor,
      animationDuration: const Duration(milliseconds: 200),
      enableActiveFill: false,
      enablePinAutofill: true,
      backgroundColor: Colors.transparent,
      keyboardType: TextInputType.number,
      boxShadows: const <BoxShadow>[
        BoxShadow(
          color: Color.fromARGB(196, 247, 247, 245),
          offset: Offset(
            1.0,
            1.0,
          ),
          blurRadius: 1.0,
          spreadRadius: 1.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ), //
      ],
      onChanged: (value) {
        setState(() {});
      },
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
