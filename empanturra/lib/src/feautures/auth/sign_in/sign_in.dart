import 'package:empanturra/src/commom_widgets/customize_text_button.dart';
import 'package:empanturra/src/feautures/auth/sign_up/sign_up.dart';
import 'package:empanturra/src/page/home/home.dart';
import 'package:flutter/material.dart';

import '../../../commom_widgets/customize_button.dart';
import '../../../commom_widgets/customize_label_text.dart';
import '../../../commom_widgets/customize_outlined_button.dart';
import '../../../commom_widgets/customize_question_account.dart';
import '../../../commom_widgets/customize_text_field.dart';
import '../../../commom_widgets/customize_title.dart';
import 'components/forgot_password/forgot_password_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final GlobalKey<FormState>  _formKey = GlobalKey<FormState>();
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
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const TitleText(
                      title: 'Entra\nencontre a comida que empanturra',
                    ),
                    const CustomLabelText(text: 'E-mail'),
                    CustomizeTextFiled(
                      controller: _controllerEmail,
                      hintText: 'informe o seu e-mail',
                      suffixIcon: Icons.email_outlined,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        String valueNotNull = value ?? '';
                        if (valueNotNull.isEmpty) {
                          return 'Este campo n??o pode ser nulo';
                        }
                        return null;
                      },
                    ),
                    const CustomLabelText(text: 'Senha'),
                    CustomizeTextFiled(
                      controller: _controllerPassword,
                      hintText: 'informe a sua senha',
                      textInputType: TextInputType.text,
                      obscureText: true,
                      suffixIcon: Icons.lock_outline_rounded,
                      validator: (value) {
                        String valueNotNull = value ?? '';
                        if (valueNotNull.isEmpty) {
                          return 'Este campo n??o pode ser nulo';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CustomizeTextButton(
                        onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const ForgotPasswordPage()));
                        },
                        textButton: 'Esqueceu a senha?',
                      ),
                    ),
                    CustomizeButton(
                      text: 'Entrar',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const Home(),
                            ),
                          );
                        } 
                      },
                    ),
                    CustomOutlinedButton(
                      text: 'Entrar com facebook',
                      icon: Icons.facebook_outlined,
                      onPressed: () {},
                    ),
                    QuestionAccount(
                      textQuestion: 'N??o tens conta?',
                      textButton: 'Registrar',
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignUp()));
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
