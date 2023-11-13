import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';
import 'package:register_form/presentation/page/password_recovery/password_recovery_sms.dart';
import 'package:register_form/presentation/widgets/button_container_widget.dart';
import 'package:register_form/presentation/widgets/form_container_widget.dart';

class PasswordRecoveryPhoneNumPage extends StatelessWidget {
  const PasswordRecoveryPhoneNumPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.black,
                  width: 1,
                ),
              ),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Восстановление пароля",
                            style: theme.textTheme.bodyLarge
                                ?.copyWith(fontSize: 22),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Text(
                          "Забыли пароль?",
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Введите свой номер телефона выше, и мы вышлем СМС для его сброса",
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          "Номер телефона",
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const FormContainerWidget(
                          hintText: "+996 708 494 568",
                        ),
                        const SizedBox(
                          height: 38,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, right: 100),
                          child: Center(
                            child: ButtonContainerWidget(
                              color: AppColors.blue,
                              text: "Подтвердить",
                              onTapListener: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PasswordRecoverySMSPage()),
                                    (route) => false);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
