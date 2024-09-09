import 'package:chatee/core/constants/app_theme.dart';
import 'package:chatee/core/constants/routes.dart';
import 'package:chatee/features/login/presentation/screens/login_screen.dart';
import 'package:chatee/features/otp/presentation/screens/otp_screen.dart';
import 'package:chatee/features/profile/presentation/screens/profile_screen.dart';
import 'package:chatee/features/splash/presentation/screens/splash_screen.dart';
import 'package:chatee/features/welcome/presentation/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        routes: {
          Routes.splashRoute: (context) => const SplashScreen(),
          Routes.welcomeRoute: (context) => const WelcomeScreen(),
          Routes.loginRoute: (context) => const LoginScreen(),
          Routes.otpRoute: (context) => const OTPScreen(),
          Routes.profileRoute: (context) => const ProfileScreen()
        },
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashRoute,
      ),
    );
  }
}
