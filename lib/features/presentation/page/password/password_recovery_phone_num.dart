import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';
import 'package:register_form/config/theme/sized_func.dart';
import 'package:register_form/features/presentation/page/password/password_recovery_sms.dart';
import 'package:register_form/features/presentation/widgets/button_container_widget.dart';
import 'package:register_form/features/presentation/widgets/form_container_widget.dart';

class PasswordRecoveryPhoneNumPage extends StatelessWidget {
  const PasswordRecoveryPhoneNumPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset("assets/images/linear_grad2.png"),
            // Align(
            //     alignment: Alignment.bottomCenter,
            //     child: Image.asset("assets/images/linear_grad3.png")),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 190, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 2.34,
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
                              style: theme.textTheme.bodyMedium,
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
                            const FormContainerWidget(
                              hintText: "+996 708 494 568",
                            ),
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
                        )),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 400),
            //   child: Image.asset("assets/images/linear_grad3.png"),
            // ),
          ],
        ),
      ),
    );
  }
}
