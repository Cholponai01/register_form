import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';
import 'package:register_form/config/theme/sized_func.dart';
import 'package:register_form/features/auth/presentation/page/password/password_recovery_sms.dart';
import 'package:register_form/features/auth/presentation/widgets/button_container_widget.dart';
import 'package:register_form/features/auth/presentation/widgets/form_container_widget.dart';

class PasswordRecoveryPhoneNumPage extends StatelessWidget {
  const PasswordRecoveryPhoneNumPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/linear_grad2.png"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/linear_grad3.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: AppColors.black,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
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
                            sizeVer(42),
                            Text(
                              "Забыли пароль?",
                              style: theme.textTheme.bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                            sizeVer(8),
                            Text(
                              "Введите свой номер телефона выше, и мы вышлем СМС для его сброса",
                              style: theme.textTheme.bodyMedium,
                            ),
                            sizeVer(18),
                            Text(
                              "Номер телефона",
                              style: theme.textTheme.bodyMedium,
                            ),
                            sizeVer(8),
                            const FormContainerWidget(),
                            sizeVer(42),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 100, right: 100),
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
        ],
      ),
    );
  }
}
