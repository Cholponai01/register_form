import 'package:flutter/material.dart';
import 'package:register_form/config/config.dart';
import 'package:register_form/config/theme/sized_func.dart';
import 'package:register_form/features/presentation/page/password/password_recovery.dart';
import 'package:register_form/features/presentation/widgets/button_container_widget.dart';
import 'package:register_form/features/presentation/widgets/form_container_widget.dart';

class PasswordRecoverySMSPage extends StatelessWidget {
  const PasswordRecoverySMSPage({super.key});

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
              child: Image.asset("assets/images/linear_grad4.png"),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/images/linear_grad5.png"),
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
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Восстановление пароля",
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            sizeVer(42),
                            Text(
                              "Введите код из СМС",
                              style: theme.textTheme.bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                            sizeVer(7),
                            Text(
                              "Для продолжения сброса пароля Вам нужно ввести код, который Вам пришел в СМС",
                              style: theme.textTheme.bodyMedium,
                            ),
                            sizeVer(18),
                            Text(
                              "СМС код",
                              style: theme.textTheme.bodyMedium,
                            ),
                            sizeVer(7),
                            const FormContainerWidget(),
                            sizeVer(7),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Не получили СМС?",
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: AppColors.black,
                                ),
                              ),
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
                                              const PasswordRecoveryPage(),
                                        ),
                                        (route) => false);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
