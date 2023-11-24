import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';
import 'package:register_form/config/theme/sized_func.dart';
import 'package:register_form/features/auth/presentation/page/registration/sign_up_page.dart';
import 'package:register_form/features/auth/presentation/page/password/password_recovery_phone_num.dart';
import 'package:register_form/features/auth/presentation/widgets/button_container_widget.dart';
import 'package:register_form/features/auth/presentation/widgets/form_container_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final iInController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset("assets/images/linear_grad.png"),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset("assets/images/linear_grad1.png"),
              ),
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
                                  "Вход",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              sizeVer(42),
                              Text(
                                "ИНН",
                                style: theme.textTheme.bodyMedium,
                              ),
                              sizeVer(7),
                              FormContainerWidget(
                                controller: iInController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Oбязательно";
                                  } else {
                                    return null;
                                  }
                                },
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
                                  } else {
                                    return null;
                                  }
                                },
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
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: AppColors.black,
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 2.0,
                                      decorationColor: AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                              sizeVer(42),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 115, right: 115),
                                child: Center(
                                  child: ButtonContainerWidget(
                                    color: AppColors.blue,
                                    text: "Вход",
                                    onTapListener: () {
                                      if (_formKey.currentState!.validate()) {
                                        print(iInController.text);
                                        print(passwordController.text);
                                      }
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
                    ),
                  ],
                ),
              ),

              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Image.asset("assets/images/linear_grad1.png"),
              // ),
            ],
          ),
        ));
  }
}
