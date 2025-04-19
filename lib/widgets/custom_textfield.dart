import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool isPassword;
  final TextEditingController? controller;

  const CustomTextField({
    required this.labelText,
    this.isPassword = false,
    this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: AppColors.textFieldColor.withOpacity(0.2),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        labelStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.zambeziColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColors.zambeziColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.0),
        ),
      ),
    );
  }
}
