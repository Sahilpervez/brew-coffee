import 'package:brew_coffee/src/features/login/views/login.dart';
import 'package:brew_coffee/src/home/views/home.dart';
import 'package:brew_coffee/src/res/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    precacheImage(AssetImage("assets/images/homeScreenBackground.jpg"), context);
    precacheImage(AssetImage("assets/images/LoginBackground.png"), context);
    precacheImage(AssetImage("assets/images/Background_2.jpg"), context);
    return Sizer(
      builder: (context,orientation,deviceType) {

        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          // home: const LoginScreen(),
          routes: {
            "/" : (ctx) => LoginScreen(),
            HomeView.routePath : (ctx) => HomeView(),
          },
        );
      }
    );
  }
}
