import 'dart:async';

import 'package:chatee/core/constants/app_theme.dart';
import 'package:chatee/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(Routes.welcomeRoute);
    });
    return Scaffold(
      body: Center(
          child: Text(
        "Chatee",
        style: TextStyle(
            fontSize: 40.sp, fontWeight: FontWeight.bold, color: AppTheme.grey),
      )
              .animate()
              .moveY(begin: 30, end: 0, duration: const Duration(seconds: 2))),
    );
  }
}
