import 'package:empanturra/src/commom_widgets/customize_button.dart';
import 'package:empanturra/src/commom_widgets/customize_label_text.dart';
import 'package:empanturra/src/commom_widgets/customize_text_button.dart';
import 'package:empanturra/src/commom_widgets/customize_text_field.dart';
import 'package:empanturra/src/commom_widgets/customize_title.dart';
import 'package:flutter/material.dart';

import '../../sign_in.dart';
import 'components/sent_with_sucess_component.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _forgotPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 12,),
                child: TitleText(title: 'Esqueceu\n a senha?'),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const CustomLabelText(text: 'e-mail'),
                      CustomizeTextFiled(
                          hintText: 'Infome seu e-mail',
                          textInputType: TextInputType.emailAddress,
                          suffixIcon: Icons.email_outlined,
                          controller: _forgotPasswordController,
                          validator: (value) {
                            String valueNotNull = value ?? '';
                            if (valueNotNull.isEmpty) {
                              return ' Por favor insere um e-mail válido';
                            }
                            return null;
                          }),
                      const Text(
                        'Enviaremos um e-mail para recuperação da sua senha, por favor verifique o seu e-mail',
                        style: TextStyle(fontSize: 14),
                      ),
                      CustomizeButton(
                          text: 'Reenviar senha',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const SentWithSucess()));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Text(
                                        'Ocorreu um erro, por favor tente novamente',
                                        style: TextStyle(color: Colors.white),
                                      )));
                            }
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Lembrou a senha?'),
                          CustomizeTextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const SignIn(),
                                  ),
                                );
                              },
                              textButton: 'Entre aqui'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
