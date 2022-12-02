import 'package:empanturra/src/commom_widgets/customize_text_button.dart';
import 'package:empanturra/src/feautures/auth/sign_up/sign_up.dart';
import 'package:flutter/material.dart';

import '../../../commom_widgets/customize_button.dart';
import '../../../commom_widgets/customize_label_text.dart';
import '../../../commom_widgets/customize_outlined_button.dart';
import '../../../commom_widgets/customize_question_account.dart';
import '../../../commom_widgets/customize_text_field.dart';
import '../../../commom_widgets/customize_title.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 12, left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TitleText(
                    title: 'Entra\nencontre a comida que empanturra',
                  ),
                  const CustomLabelText(text: 'E-mail'),
                  CustomizeTextFiled(
                    validator: (text){},
                    controller: _controllerEmail,
                    hintText: 'informe o seu e-mail',
                    suffixIcon: Icons.email_outlined,
                    textInputType: TextInputType.emailAddress,
                  
                  ),
                  const CustomLabelText(text: 'Senha'),
                  CustomizeTextFiled(
                    validator: (text){},
                    controller: _controllerPassword,
                    hintText: 'informe a sua senha',
                    textInputType: TextInputType.text,
                    obscureText: true,
                    suffixIcon: Icons.lock_outline_rounded,
               
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomizeTextButton(
                      onPressed: () {},
                      textButton: 'Esqueceu a senha?',
                    ),
                  ),
                  CustomizeButton(
                    text: 'Entrar',
                    onPressed: () {},
                  ),
                  CustomOutlinedButton(
                    text: 'Entrar com facebook',
                    icon: Icons.facebook_outlined,
                    onPressed: () {},
                  ),
                  QuestionAccount(
                    textQuestion: 'Não tens conta?',
                    textButton: 'Registrar',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const SignUp(),),);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
