import 'package:flutter/material.dart';
import 'package:store_app/pages/sign_up/sign_up.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don’t have an account? ",
          style: TextStyle(color: Color(0xFF757575)),
        ),
        GestureDetector(
          onTap: () {
            // Handle navigation to Sign Up
          },
          child:  TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              },));
            },
            child: Text(
            "Sign Up",
            style: TextStyle(
              color: Color(0xFFFF7643),
            ),
            ),
          ),
        ),
      ],
    );
  }
}
