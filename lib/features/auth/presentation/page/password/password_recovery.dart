import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';
import 'package:register_form/config/theme/sized_func.dart';
import 'package:register_form/features/auth/presentation/page/registration/registration.dart';
import 'package:register_form/features/auth/presentation/widgets/button_container_widget.dart';
import 'package:register_form/features/auth/presentation/widgets/form_container_widget.dart';

class PasswordRecoveryPage extends StatefulWidget {
  const PasswordRecoveryPage({super.key});

  @override
  State<PasswordRecoveryPage> createState() => _PasswordRecoveryPageState();
}

class _PasswordRecoveryPageState extends State<PasswordRecoveryPage> {
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    passwordController.dispose();
    confirmpasswordController.dispose();
    super.dispose();
  }

  bool isValidPassword(String password) {
    RegExp regex = RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$');
    return regex.hasMatch(password);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Stack(
          children: [
            Image.asset("assets/images/linear_grad6.png"),
            Align(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/images/linear_grad7.png")),
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
                    child: Form(
                      key: _formKey,
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
                                "Нужно создать новый пароль?",
                                style: theme.textTheme.bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.w600),
                              ),
                              sizeVer(7),
                              Text(
                                "Введите свой новый пароль а после повторите его.",
                                style: theme.textTheme.bodyMedium,
                              ),
                              sizeVer(18),
                              Text(
                                "Пароль",
                                style: theme.textTheme.bodyMedium,
                              ),
                              sizeVer(7),
                              FormContainerWidget(
                                isPasswordField: true,
                                controller: passwordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Oбязательно";
                                  } else if (!isValidPassword(value)) {
                                    print("Entered password: $value");
                                    print(
                                        "Regex match result: ${isValidPassword(value)}");
                                    return "Пароль должен содержать минимум 8 символов, включая цифры, буквы верхнего и нижнего регистра.";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(height: 5),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Не менее 8 символов",
                                  style: theme.textTheme.bodySmall
                                      ?.copyWith(color: AppColors.green),
                                ),
                              ),
                              sizeVer(18),
                              Text(
                                "Повторите пароль",
                                style: theme.textTheme.bodyMedium,
                              ),
                              sizeVer(7),
                              FormContainerWidget(
                                isPasswordField: true,
                                controller: confirmpasswordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Oбязательно";
                                  } else if (value != passwordController.text) {
                                    return "Пароли не совпадают";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              sizeVer(42),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 100, right: 100),
                                child: Center(
                                  child: ButtonContainerWidget(
                                    color: AppColors.blue,
                                    text: "Подтвердить",
                                    onTapListener: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignInPage()),
                                          (route) => false);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
