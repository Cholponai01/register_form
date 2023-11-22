import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';
import 'package:register_form/config/theme/sized_func.dart';
import 'package:register_form/features/presentation/page/registration/sign_in_page.dart';
import 'package:register_form/features/presentation/widgets/button_container_widget.dart';
import 'package:register_form/features/presentation/widgets/dropdown_gender_selection_widget.dart';
import 'package:register_form/features/presentation/widgets/dropdown_job_title_selection_widget.dart';
import 'package:register_form/features/presentation/widgets/form_container_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final iInController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    iInController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset("assets/images/linear_grad0.png"),
            Padding(
              padding: const EdgeInsets.fromLTRB(19, 43, 19, 43),
              child: Container(
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
                            "Зарегистрировать сотрудника",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        sizeVer(42),
                        Text(
                          "Имя",
                          style: theme.textTheme.bodyMedium,
                        ),
                        sizeVer(7),
                        FormContainerWidget(
                          controller: nameController,
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
                          "Фамиля",
                          style: theme.textTheme.bodyMedium,
                        ),
                        sizeVer(7),
                        FormContainerWidget(
                          controller: surnameController,
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
                          "Номер телефона",
                          style: theme.textTheme.bodyMedium,
                        ),
                        sizeVer(7),
                        FormContainerWidget(
                          controller: phoneNumberController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Oбязательно";
                            } else {
                              return null;
                            }
                          },
                        ),
                        sizeVer(18),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Должность  ",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    sizeVer(7),
                                    JobTitleSelectionFormField(
                                      onSaved: (value) {},
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Выбор позиции обязателен';
                                        } else {
                                          return null;
                                        }
                                      },
                                      onChanged: (value) {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Пол",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    sizeVer(7),
                                    GenderSelectionFormField(
                                      onSaved: (value) {},
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Выбор пола обязателен';
                                        } else {
                                          return null;
                                        }
                                      },
                                      onChanged: (value) {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
                        sizeVer(18),
                        Text(
                          "Подтвердить пароль",
                          style: theme.textTheme.bodyMedium,
                        ),
                        sizeVer(7),
                        FormContainerWidget(
                          isPasswordField: true,
                          controller: confirmpasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Oбязательно";
                            } else {
                              return null;
                            }
                          },
                        ),
                        sizeVer(42),
                        Padding(
                          padding: const EdgeInsets.only(left: 75, right: 75),
                          child: Center(
                            child: ButtonContainerWidget(
                              color: AppColors.blue,
                              text: "Зарегистрировать",
                              onTapListener: () {
                                if (_formKey.currentState!.validate()) {
                                  print(nameController.text);
                                  print(surnameController.text);
                                  print(iInController.text);
                                  print(phoneNumberController.text);
                                  print(passwordController.text);
                                  print(confirmpasswordController.text);
                                }
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
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
