import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';
import 'package:register_form/config/theme/sized_func.dart';
import 'package:register_form/presentation/page/credential/sign_up_page.dart';
import 'package:register_form/presentation/page/password_recovery/password_recovery_phone_number.dart';
import 'package:register_form/presentation/widgets/button_container_widget.dart';
import 'package:register_form/presentation/widgets/form_container_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                        const Center(
                          child: Text(
                            "Вход",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        sizeVer(15),
                        Text(
                          "ИНН",
                          style: theme.textTheme.bodyMedium,
                        ),
                        sizeVer(8),
                        const FormContainerWidget(
                          hintText: "123456789",
                        ),
                        sizeVer(18),
                        Text(
                          "Пароль",
                          style: theme.textTheme.bodyMedium,
                        ),
                        sizeVer(8),
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
                        sizeVer(18),
                        Padding(
                          padding: const EdgeInsets.only(left: 115, right: 115),
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
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
