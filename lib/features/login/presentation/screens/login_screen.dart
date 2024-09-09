import 'package:chatee/core/constants/app_theme.dart';
import 'package:chatee/core/constants/data.dart';
import 'package:chatee/core/constants/routes.dart';
import 'package:chatee/core/widgets/custom_button.dart';
import 'package:chatee/core/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter your phone number",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            CustomTextFormField(
              controller: phoneController,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'Phone number must be not empty!!';
                } else if (!RegExp(Data().validationPhone)
                    .hasMatch(value.trim())) {
                  return 'Phone number is not valid!';
                } else {
                  return null;
                }
              },
              radius: 4,
              bckColor: AppTheme.white,
              hor: 32.sp,
              vert: 20.sp,
              keyboardType: TextInputType.phone,
              hintText: "Phone Number",
              hintLabelTextStyle: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppTheme.grey),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 16),
            CustomButton(
                onPressed: () {
                  print(phoneController.text);
                  if (formKey.currentState?.validate() == true) {
                    Navigator.pushReplacementNamed(context, Routes.otpRoute,
                        arguments: phoneController.text.toString());
                  }
                },
                text: "Get Started",
                color: AppTheme.lightContainer,
                radius: 15,
                height: 45.h,
                width: 300.w,
                textStyle: Theme.of(context).textTheme.displaySmall!)
          ],
        ),
      ),
    );
  }
}
