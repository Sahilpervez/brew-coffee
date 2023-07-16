import 'dart:math';

import 'package:brew_coffee/src/commons/FrozenGlass.dart';
import 'package:brew_coffee/src/home/views/home.dart';
import 'package:brew_coffee/src/res/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    this.constraints,
    this.onPressed,
  });
  final constraints;
  final Function? onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: InkWell(
        onTap: () {
          (onPressed == null)?(){}:onPressed!();
        },
        child: Container(
          width: min(200, constraints.maxWidth * 0.55),
          height: constraints.maxHeight * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.transparent,
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: const Center(
            child: Text(
              "SignUp",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Inter",
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    this.constraints,
    this.onPressed,
  });
  final constraints;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: InkWell(
        onTap: () {
          (onPressed == null)?(){}:onPressed!();
        },
        child: Container(
          width: min(200, constraints.maxWidth * 0.55),
          height: constraints.maxHeight * 0.06,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF4C2A1A), Color(0xFFA67359)],
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0xA5000000),
                blurRadius: 15,
                offset: Offset(2, 2),
                spreadRadius: -2,
              ),
            ],
          ),
          child: const Center(
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Inter",
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    super.key,
    this.constraints,
  });
  final constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Image.asset(
        ImageAsset.loginAssetImg,
        height: constraints.maxHeight * 0.12,
      ),
    );
  }
}

final isPasswordVisibleProvider = StateProvider<bool>((ref) => false);

class LoginInputField extends ConsumerWidget {
  const LoginInputField({
    super.key,
    required TextEditingController controller,
    this.hintText,
    this.isPassword = false,
  }) : _usernameController = controller;

  final String? hintText;
  final TextEditingController _usernameController;
  final bool isPassword;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPasswordVisible = ref.watch(isPasswordVisibleProvider);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: min(MediaQuery.of(context).size.width * 0.7, 300),
      child: TextFormField(
        obscureText: (isPasswordVisible == false && isPassword) ? true : false,
        controller: _usernameController,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.grey.shade200,
              fontSize: 13,
              fontFamily: "Inter",
              fontWeight: FontWeight.w400),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 5),
          focusColor: Colors.white,
          suffixIcon: (isPassword == true)
              ? InkWell(
                  onTap: () {
                    ref
                        .read(isPasswordVisibleProvider.notifier)
                        .update((state) => !state);
                  },
                  child: Icon(
                    Icons.remove_red_eye,
                    color: (isPasswordVisible) ? Colors.white : Colors.grey,
                  ))
              : null,
        ),
        style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontFamily: "Inter",
            fontWeight: FontWeight.w300),
        cursorColor: Colors.white,
      ),
    );
  }
}

class HeadingQuote extends StatelessWidget {
  const HeadingQuote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        '"Latte but never late"',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xFFABABAB),
          fontSize: min(12, 9.sp),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class LoginHeading extends StatelessWidget {
  const LoginHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Swift\n',
            style: TextStyle(
              color: Colors.white,
              fontSize: max(31, 20.sp),
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Café',
            style: TextStyle(
              color: Colors.white,
              fontSize: max(17, 12.sp),
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
