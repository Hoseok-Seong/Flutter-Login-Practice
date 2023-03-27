import 'package:flutter/material.dart';
import 'package:flutter_login/components/my_input_decoration.dart';

class CustomTextFormField extends StatelessWidget {
  final title;
  final isObscure;
  const CustomTextFormField(this.title, {this.isObscure = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        TextFormField(
          validator: (value) => value!.isEmpty ? "Please enter some text" : null,
          // onChanged: (text) {
          //   print(text);
          // },
          obscureText: isObscure,
          decoration: MyInputDecoration("Enter $title"),
        ),
      ],
    );
  }
}
