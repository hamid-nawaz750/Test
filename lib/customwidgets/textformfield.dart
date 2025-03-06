import 'package:flutter/material.dart';

class CustomTextformField extends StatelessWidget {
  final String hint;
  final IconData? iconn;
  const CustomTextformField({super.key, required this.hint, this.iconn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: iconn != null ? Icon(iconn) : null,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
