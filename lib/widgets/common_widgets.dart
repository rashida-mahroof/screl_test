import 'package:auto_binding_field/auto_binding_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String? value;
  final String label;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final int? maxLines;
  final String?  hintText;
  final int? maxLength;
  const CustomTextField({
    super.key,
    this.value,
    required this.label,
    this.validator,
    this.onChanged, this.hintText, this.maxLines,this.maxLength
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8), 
        AutoBindingTextField(
          value: value,
          inputFormatters: [
              LengthLimitingTextInputFormatter(maxLength ?? 20),
          ],
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            
            hintText: hintText,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          ),
          onChanged: onChanged,
          validator: validator,
        ),
      ],
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch(
      {super.key, required this.value, this.onChanged, this.label});
  final bool value;
  final String? label;
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      
      title: Text(label ?? ''),
      value: value,
      onChanged: onChanged,
    );
  }
}
