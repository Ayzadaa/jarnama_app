import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hinText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.maxLines,
    this.focusNode,
  }) : super(key: key);
  final String? hinText;
  final TextEditingController? controller;
  final void Function()? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      maxLines: maxLines,
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: hinText ?? '',
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
