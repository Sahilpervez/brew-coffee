import 'dart:math';

import 'package:brew_coffee/src/commons/FrozenGlass.dart';
import 'package:brew_coffee/src/home/views/home.dart';
import 'package:brew_coffee/src/res/assets.dart';
import 'package:flutter/material.dart';

import 'widgets/header_quote.dart';
import 'widgets/login_button.dart';
import 'widgets/login_heading.dart';
import 'widgets/login_input_field.dart';
import 'widgets/login_logo.dart';
import 'widgets/sign_up_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252525),
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(builder: (context, constraints) {
        return Align(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageAsset.loginBackground2,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              child: FrozenGlassContainer(
                height: MediaQuery.of(context).size.height * 0.9,
                width: min(MediaQuery.of(context).size.width * 0.87, 350),
                borderRadius: 17,
                child: Align(
                  child: ListView(
                    
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      LoginLogo(
                        constraints: constraints,
                      ),
                      const LoginHeading(),
                      const HeadingQuote(),
                      Align(
                        child: LoginInputField(
                            controller: _usernameController,
                            hintText: "User Name"),
                      ),
                      Align(
                          child: LoginInputField(
                        controller: _passwordController,
                        hintText: "Password",
                        isPassword: true,
                      )),
                      SizedBox(height: constraints.maxHeight * 0.06),
                      LoginButton(constraints: constraints,onPressed: (){
                        Navigator.of(context).pushReplacementNamed(HomeView.routePath );
                      },),
                      SizedBox(height: constraints.maxHeight * 0.04),
                      SignUpButton(constraints: constraints,),
                      SizedBox(height: constraints.maxHeight * 0.04),
                      const Text(
                        'Privacy Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.04),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

