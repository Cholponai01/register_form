import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
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
        items: <String>['Erkek', 'Kız']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.black, fontSize: 15),
          contentPadding:
              const EdgeInsets.only(left: 10.0, top: 4.0, bottom: 4.0),
        ),
        onSaved: widget.onSaved,
        validator: widget.validator,
      ),
    );
  }
}
