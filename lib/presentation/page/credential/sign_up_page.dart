import 'package:flutter/material.dart';
import 'package:register_form/config/theme/app_colors.dart';
import 'package:register_form/presentation/page/credential/sign_in_page.dart';
import 'package:register_form/presentation/widgets/button_container_widget.dart';
import 'package:register_form/presentation/widgets/form_container_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.greyBg,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.black,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 18),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Зарегистрировать сотрудника",
                      style: theme.textTheme.bodyLarge?.copyWith(fontSize: 22),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Имя",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const FormContainerWidget(
                    hintText: "Айдай",
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Фамиля",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const FormContainerWidget(
                    hintText: "Кадырова",
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "ИНН",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const FormContainerWidget(
                    hintText: "123456789",
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
                    height: 18,
                  ),
                  Text(
                    "Должность",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const FormContainerWidget(),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Пароль",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const FormContainerWidget(
                    isPasswordField: true,
                    hintText: "*********",
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Подтвердить пароль",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const FormContainerWidget(
                    isPasswordField: true,
                    hintText: "*********",
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 75, right: 75),
                    child: Center(
                      child: ButtonContainerWidget(
                        color: AppColors.blue,
                        text: "Зарегистрировать",
                        onTapListener: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInPage()),
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
    );
  }
}
