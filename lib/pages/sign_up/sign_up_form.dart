import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/constants/constants.dart';
import 'package:store_app/pages/sign_in/sign_in.dart';
import 'package:store_app/widgets/custom_elevated_button.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            onSaved: (email) {},
            onChanged: (email) {},
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                hintText: "Enter your email",
                labelText: "Email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintStyle: const TextStyle(color: Color(0xFF757575)),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                suffix: SvgPicture.string(
                  mailIcon,
                ),
                border: authOutlineInputBorder,
                enabledBorder: authOutlineInputBorder,
                focusedBorder: authOutlineInputBorder.copyWith(
                    borderSide: const BorderSide(color: Color(0xFFFF7643)))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: TextFormField(
              onSaved: (password) {},
              onChanged: (password) {},
              obscureText: true,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintStyle: const TextStyle(color: Color(0xFF757575)),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  suffix: SvgPicture.string(
                    lockIcon,
                  ),
                  border: authOutlineInputBorder,
                  enabledBorder: authOutlineInputBorder,
                  focusedBorder: authOutlineInputBorder.copyWith(
                      borderSide: const BorderSide(color: Color(0xFFFF7643)))),
            ),
          ),
          TextFormField(
            onSaved: (password) {},
            onChanged: (password) {},
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter your password",
                labelText: "Re-enter your password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintStyle: const TextStyle(color: Color(0xFF757575)),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                suffix: SvgPicture.string(
                  lockIcon,
                ),
                border: authOutlineInputBorder,
                enabledBorder: authOutlineInputBorder,
                focusedBorder: authOutlineInputBorder.copyWith(
                    borderSide: const BorderSide(color: Color(0xFFFF7643)))),
          ),
          const SizedBox(height: 32),
          CustomElevatedButton(
            text: 'Sign Up',
            onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ));
          })
        ],
      ),
    );
  }
}
