import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_training/core/constants.dart';
import 'package:project_training/features/auth/presentation/widgets/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/imgs/logo.png',
              width: 150,
            ),
            Text(
              'Welcome Back',
              style: GoogleFonts.montserrat(
                  fontSize: 35, fontWeight: FontWeight.w900, color: textColor),
            ),
            Text(
              'Please enter your details to sing in.',
              style: GoogleFonts.montserrat(
                  fontSize: 15, fontWeight: FontWeight.w500, color: textColor),
            ),
            const SizedBox(height: 35),
            const CustomTextField(
              preIcon: Icons.email,
              hint: 'Enter your email or phone nom',
            ),
            const SizedBox(height: 18),
            const CustomTextField(
              preIcon: Icons.password,
              hint: 'Enter your email or phone nom',
            ),
            const SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: buttonColor,
                    minimumSize: const Size(double.infinity, 55)),
                child: Text(
                  'Sign In',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: backgroundColor),
                )),
            const SizedBox(height: 35),
            InkWell(
              onTap: () {},
              child: Text(
                'Create an account?',
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: textColor),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
