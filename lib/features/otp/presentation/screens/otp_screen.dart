import 'dart:async';

import 'package:chatee/core/constants/app_theme.dart';
import 'package:chatee/core/constants/routes.dart';
import 'package:chatee/core/widgets/custom_button.dart';
import 'package:chatee/core/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({
    super.key,
  });

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final otp1 = TextEditingController();
  final otp2 = TextEditingController();
  final otp3 = TextEditingController();
  final otp4 = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Timer? timer;
  int start = 30;
  bool isResendButtonDisabled = true;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final String phoneNumber =
        ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the OTP sent to $phoneNumber',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 50.w,
                  child: CustomTextFormField(
                    controller: otp1,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return '  *';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.number,
                    radius: 5,
                    bckColor: AppTheme.white,
                    hor: 5,
                    vert: 0,
                    autoFocus: false,
                    maxLength: 1,
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  child: CustomTextFormField(
                    controller: otp2,
                    maxLength: 1,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return '  *';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.number,
                    radius: 5,
                    bckColor: AppTheme.white,
                    hor: 5,
                    vert: 0,
                    autoFocus: false,
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  child: CustomTextFormField(
                    controller: otp3,
                    maxLength: 1,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return '  *';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.number,
                    radius: 5,
                    bckColor: AppTheme.white,
                    hor: 5,
                    vert: 0,
                    autoFocus: false,
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  child: CustomTextFormField(
                    controller: otp4,
                    maxLength: 1,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return '  *';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.number,
                    radius: 5,
                    bckColor: AppTheme.white,
                    hor: 5,
                    vert: 0,
                    autoFocus: false,
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 16),
            CustomButton(
                onPressed: () {
                  if (formKey.currentState?.validate() == true) {
                    Navigator.pushReplacementNamed(
                      context,
                      Routes.profileRoute,
                    );
                  }
                },
                text: "Verify OTP",
                color: AppTheme.lightContainer,
                radius: 15,
                height: 45.h,
                width: 300.w,
                textStyle: Theme.of(context).textTheme.displaySmall!),
            SizedBox(height: MediaQuery.of(context).size.height / 16),
            Text(
                isResendButtonDisabled
                    ? 'Resend code in $start seconds'
                    : 'You can now resend the code',
                style: Theme.of(context).textTheme.bodySmall),
            TextButton(
              onPressed: isResendButtonDisabled ? null : resendCode,
              child: Text(
                'Resend Code',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: isResendButtonDisabled
                        ? AppTheme.grey
                        : AppTheme.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startTimer() {
    setState(() {
      start = 30;
      isResendButtonDisabled = true;
    });
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (start == 0) {
        setState(() {
          isResendButtonDisabled = false;
        });
        timer.cancel();
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

  void resendCode() {
    debugPrint("Resending OTP...");
    startTimer();
  }
}
