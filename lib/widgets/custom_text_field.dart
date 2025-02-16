import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final String? Function(String?)? validator; // Add a validator
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.isPassword,
    this.validator, // Make validator optional
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFD8E2DC),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black54),
        ),
        validator: validator, // Use the validator
        controller: controller,
      ),
    );
  }
}
