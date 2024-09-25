import 'package:flutter/material.dart';
class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({super.key, this.hintText , this.onChanged ,this.obscureText = false});
  String? hintText;
  bool? obscureText;
  Function (String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data)
      {
        if(data!.isEmpty)
          {
            return 'Field is required';
          }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.white),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white
            ),
          )
      ),
    );
  }
}
