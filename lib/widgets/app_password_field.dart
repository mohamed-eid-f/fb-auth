import 'package:flutter/material.dart';

class AppPasswordField extends StatefulWidget {
  final String label;
  final TextEditingController controller;

  const AppPasswordField({
    super.key,
    required this.label,
    required this.controller,
  });

  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: !visible,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        labelText: widget.label,
        suffixIcon: InkWell(
          onTap: () {
            setState(
              () {
                visible = !visible;
              },
            );
          },
          child: Icon(
            visible ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
