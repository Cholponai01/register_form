import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';

class ButtonContainerWidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final VoidCallback? onTapListener;
  const ButtonContainerWidget(
      {super.key, this.color, this.text, this.onTapListener});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapListener,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.055,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            "$text",
            style: const TextStyle(
                color: AppColors.backgroundColor,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        ),
      ),
    );
  }
}
