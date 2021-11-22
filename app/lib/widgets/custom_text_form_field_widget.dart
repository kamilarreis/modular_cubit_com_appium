import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  final String hintText;
  final bool obscureText;

  const CustomTextFormFieldWidget({
    Key? key,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  _CustomTextFormFieldWidgetState createState() =>
      _CustomTextFormFieldWidgetState();
}

class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key('input-user'),
      style: const TextStyle(color: Colors.white),
      validator: (text) {
        return text!.isEmpty ? "Favor digitar a senha" :  null;
      },
      decoration: InputDecoration(
        hintText: 'User',
        hintStyle: const TextStyle(color: Colors.white),
      ),
      obscureText: widget.obscureText,
    );
  }
}
