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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Зарегистрировать сотрудника",
                          style:
                              theme.textTheme.bodyLarge?.copyWith(fontSize: 22),
                        ),
                      ),
                      sizeVer(42),
                      Text(
                        "Имя",
                        style: theme.textTheme.bodyMedium,
                      ),
                      sizeVer(7),
                      const FormContainerWidget(
                        hintText: "Айдай",
                      ),
                      sizeVer(18),
                      Text(
                        "Фамиля",
                        style: theme.textTheme.bodyMedium,
                      ),
                      sizeVer(7),
                      const FormContainerWidget(
                        hintText: "Кадырова",
                      ),
                      sizeVer(18),
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
                        "Номер телефона",
                        style: theme.textTheme.bodyMedium,
                      ),
                      sizeVer(7),
                      const FormContainerWidget(
                        hintText: "+996 708 494 568",
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
                                    hintText: '- - - -',
                                    onSaved: (value) {},
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Выбор позиции обязателен';
                                      }
                                      return null;
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
                                    hintText: '- - - -',
                                    onSaved: (value) {},
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Выбор пола обязателен';
                                      }
                                      return null;
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
                      const FormContainerWidget(
                        isPasswordField: true,
                        hintText: "*********",
                      ),
                      sizeVer(18),
                      Text(
                        "Подтвердить пароль",
                        style: theme.textTheme.bodyMedium,
                      ),
                      sizeVer(7),
                      const FormContainerWidget(
                        isPasswordField: true,
                        hintText: "*********",
                      ),
                      sizeVer(42),
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
          ],
        ),
      ),
    );
  }
}
