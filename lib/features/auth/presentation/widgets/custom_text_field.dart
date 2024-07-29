import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_training/core/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.obsecure = false,
      required this.hint,
      required this.preIcon});
  final bool obsecure;
  final String hint;
  final IconData preIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style:GoogleFonts.eduNswActFoundation(
              fontWeight: FontWeight.w500, color: textColor) ,
      obscureText: obsecure,
      decoration: InputDecoration(
          prefixIcon: Icon(
            preIcon,
            color: buttonColor,
          ),
          hintText: hint,
          hintStyle: GoogleFonts.eduNswActFoundation(
              fontWeight: FontWeight.w500, color: textColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: buttonColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: buttonColor))),
    );
  }
}
