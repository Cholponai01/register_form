import 'package:flutter/material.dart';
import 'package:register_form/config/config.dart';

class GenderSelectionFormField extends StatefulWidget {
  final String? hintText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final void Function(String?)? onChanged;

  const GenderSelectionFormField({
    Key? key,
    this.hintText,
    this.onSaved,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  State<GenderSelectionFormField> createState() =>
      _GenderSelectionFormFieldState();
}

class _GenderSelectionFormFieldState extends State<GenderSelectionFormField> {
  String? selectedGender;
  final genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.05,
      child: DropdownButtonFormField<String>(
        value: selectedGender,
        onChanged: (String? newValue) {
          setState(() {
            selectedGender = newValue;
          });
          if (widget.onChanged != null) {
            widget.onChanged!(newValue);
          }
        },
        items: <String>['Мужской', 'Женский']
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
        ),
        onSaved: widget.onSaved,
        validator: widget.validator,
      ),
    );
  }
}
