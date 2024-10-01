import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final Function(String) onSubmitted;
  const CustomTextField({super.key, required this.onSubmitted});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        hintText: 'Search',
        focusedBorder: outlineInputBorderMethod(),
        enabledBorder: outlineInputBorderMethod(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorderMethod() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
