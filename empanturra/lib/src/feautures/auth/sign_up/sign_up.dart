import 'package:empanturra/src/page/home/home.dart';
import 'package:flutter/material.dart';

import '../../../commom_widgets/customize_button.dart';
import '../../../commom_widgets/customize_label_text.dart';
import '../../../commom_widgets/customize_outlined_button.dart';
import '../../../commom_widgets/customize_question_account.dart';
import '../../../commom_widgets/customize_text_field.dart';
import '../../../commom_widgets/customize_title.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 0, left: 12, right: 12),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const TitleText(
                  title: 'Registrar\nnova conta',
                ),
                const CustomLabelText(text: 'Nome'),
                CustomizeTextFiled(
                  validator: (value) {
                    String valueNotNull = value ?? '';
                    if (valueNotNull.isEmpty) {
                      return 'Este campo não pode ser nulo';
                    }
                    return null;
                  },
                  controller: _controllerName,
                  hintText: 'informe o seu nome',
                  suffixIcon: Icons.person_outline_rounded,
                  textInputType: TextInputType.name,
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
                      return 'Este campo não pode ser nulo';
                    }
                    return null;
                  },
                ),
                const CustomLabelText(text: 'Telefone'),
                CustomizeTextFiled(
                  controller: _controllerPhone,
                  hintText: 'informe o seu telefone',
                  suffixIcon: Icons.phone_android_outlined,
                  textInputType: TextInputType.phone,
                  validator: (value) {
                    String valueNotNull = value ?? '';
                    if (valueNotNull.isEmpty) {
                      return 'Este campo não pode ser nulo';
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
                    _controllerPassword.text = value ?? '';
                    String valueNotNull = value ?? '';
                    if (valueNotNull.isEmpty) {
                      return 'Este campo não pode ser nulo';
                    }
                    return null;
                  },
                ),
                CustomizeButton(
                  text: 'Registrar',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context, (MaterialPageRoute(builder: (_) => const Home())));
                    } else {
                      return 'nonono';
                    }
                  },
                ),
                CustomOutlinedButton(
                  text: 'Registrar com facebook',
                  icon: Icons.facebook_outlined,
                  onPressed: () {},
                ),
                QuestionAccount(
                  textQuestion: 'Já tem uma conta?',
                  textButton: 'Entrar',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    )));
  }
}
