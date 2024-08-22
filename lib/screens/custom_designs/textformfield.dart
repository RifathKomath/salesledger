import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget customTextField(
    {required TextEditingController controller,
    required IconData icon,
    required String label,
    TextInputType keyboardType = TextInputType.text,
    List<TextInputFormatter>? inputFormatters,
    String? Function(String?)? validator,
    void Function()? onTap,
    bool readOnly = false,
    int? minLines,
    int? maxlines,
    int?length
    }) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      controller: controller,
      maxLines: maxlines,
      minLines: minLines,
      maxLength: length,
      decoration: InputDecoration(
          icon: Icon(icon),
          labelText: label,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.teal))),
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      validator: validator,
      onTap: onTap,
      readOnly: readOnly,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    ),
  );
}
