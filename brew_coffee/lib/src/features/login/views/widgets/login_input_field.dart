
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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