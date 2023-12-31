import 'package:brew_coffee/src/features/details/views/details.dart';
import 'package:brew_coffee/src/features/login/views/login.dart';
import 'package:brew_coffee/src/home/views/home.dart';
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

    precacheImage(const AssetImage("assets/images/homeScreenBackground.jpg"), context);
    precacheImage(const AssetImage("assets/images/LoginBackground.png"), context);
    precacheImage(const AssetImage("assets/images/mainBackground.jpg"), context);
    return Sizer(
      builder: (context,orientation,deviceType) {

        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          routes: {
            "/" : (ctx) => LoginScreen(),
            HomeView.routePath : (ctx) => HomeView(),
            DetailsPage.routePath : (ctx) => DetailsPage(),
          },
        );
      }
    );
  }
}
