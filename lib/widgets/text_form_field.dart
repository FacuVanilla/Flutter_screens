import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final Color borderColor;
  final Color fillColor;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    required this.validator,
    this.controller,
    required this.borderColor,
    this.fillColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 4), 
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 10.0), 
              border: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor),
              ),
              fillColor: fillColor,
              filled: true,
            ),
            keyboardType: keyboardType,
            validator: validator,
          ),
        ],
      ),
    );
  }
}