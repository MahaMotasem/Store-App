import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({this.hintText, this.onChanged , this.keyboardType, this.obscureText =false});
  Function(String)? onChanged;
  String? hintText;

  bool? obscureText;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(

        obscureText:obscureText!,
        // validator: (data) {
        //   if (data!.isEmpty) {
        //     return 'field is required';
        //   }
        // },
        onChanged: onChanged,
         keyboardType:keyboardType ,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(

          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(

            ),
            borderRadius:   BorderRadius.circular(8),
          ),

          border: OutlineInputBorder(
            borderSide: BorderSide(

            ),
             borderRadius:   BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFFF7643),
            ),
             borderRadius:   BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
