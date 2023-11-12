import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';

class FormContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onsaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  const FormContainerWidget(
      {super.key,
      this.controller,
      this.fieldKey,
      this.isPasswordField,
      this.hintText,
      this.labelText,
      this.helperText,
      this.onsaved,
      this.validator,
      this.onFieldSubmitted,
      this.inputType});

  @override
  State<FormContainerWidget> createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
        color: AppColors.greyBg,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: AppColors.black,
          width: 1,
        ),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: AppColors.black,
        ),
        controller: widget.controller,
        keyboardType: widget.inputType,
        key: widget.fieldKey,
        obscureText: widget.isPasswordField == true ? _obscureText : false,
        onSaved: widget.onsaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: AppColors.black, fontSize: 15),
          contentPadding:
              const EdgeInsets.only(left: 10.0, top: 4.0, bottom: 4.0),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: widget.isPasswordField == true
                ? Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: _obscureText == false
                        ? AppColors.black
                        : AppColors.textGrey,
                  )
                : const Text(""),
          ),
        ),
      ),
    );
  }
}
