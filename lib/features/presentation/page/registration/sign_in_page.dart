import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';
import 'package:register_form/config/theme/sized_func.dart';
import 'package:register_form/features/presentation/page/registration/sign_up_page.dart';
import 'package:register_form/features/presentation/page/password/password_recovery_phone_num.dart';
import 'package:register_form/features/presentation/widgets/button_container_widget.dart';
import 'package:register_form/features/presentation/widgets/form_container_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset("assets/images/linear_grad.png"),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 190,
                  right: 20,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2.18,
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
                            const Center(
                              child: Text(
                                "Вход",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            sizeVer(42),
                            Text(
                              "ИНН",
                              style: theme.textTheme.bodyMedium,
                            ),
                            sizeVer(7),
                            const FormContainerWidget(
                              hintText: "123456789",
                            ),
                            sizeVer(18),
                            Text(
                              "Пароль",
                              style: theme.textTheme.bodyMedium,
                            ),
                            sizeVer(7),
                            const FormContainerWidget(
                              isPasswordField: true,
                              hintText: "*********",
                            ),
                            const SizedBox(height: 5),
                            Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PasswordRecoveryPhoneNumPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Забыли пароль?",
                                  style: theme.textTheme.bodySmall
                                      ?.copyWith(color: AppColors.black),
                                ),
                              ),
                            ),
                            sizeVer(42),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 115, right: 115),
                              child: Center(
                                child: ButtonContainerWidget(
                                  color: AppColors.blue,
                                  text: "Вход",
                                  onTapListener: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpPage()),
                                        (route) => false);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset("assets/images/linear_grad1.png"),
              ),
            ],
          ),
        ));
  }
}
