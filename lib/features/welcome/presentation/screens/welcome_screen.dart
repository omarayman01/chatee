import 'package:chatee/core/constants/app_theme.dart';
import 'package:chatee/core/constants/routes.dart';
import 'package:chatee/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              """
  Break the
  boundaries and 
  connect with 
  people all over the 
  world""",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 36.sp),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          CustomButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, Routes.loginRoute),
              text: "Get Started",
              color: AppTheme.lightContainer,
              radius: 15,
              height: 45.h,
              width: 300.w,
              textStyle: Theme.of(context).textTheme.displaySmall!)
        ],
      ),
    );
  }
}
