import 'package:flutter/material.dart';
import 'package:register_form/config/config.dart';

class JobTitleSelectionFormField extends StatefulWidget {
  final String? hintText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final void Function(String?)? onChanged;

  const JobTitleSelectionFormField({
    Key? key,
    this.hintText,
    this.onSaved,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  State<JobTitleSelectionFormField> createState() =>
      _JobTitleSelectionFormFieldState();
}

class _JobTitleSelectionFormFieldState
    extends State<JobTitleSelectionFormField> {
  String? selectedGender;
  final jobTitlecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedGender,
      onChanged: (String? newValue) {
        setState(() {
          selectedGender = newValue;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(newValue);
        }
      },
      items: <String>['Директор', 'Швея']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: AppColors.black),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        fillColor: AppColors.backgroundColor,
        filled: true,
        hintText: widget.hintText,
        hintStyle: theme.textTheme.bodyMedium,
        contentPadding:
            const EdgeInsets.only(left: 10.0, top: 4.0, bottom: 4.0),
        // constraints: const BoxConstraints(maxHeight: 40, minHeight: 40),
      ),
      onSaved: widget.onSaved,
      validator: widget.validator,
    );
  }
}
