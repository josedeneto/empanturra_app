import 'package:empanturra/src/commom_widgets/customize_button.dart';
import 'package:empanturra/src/commom_widgets/customize_text_button.dart';
import 'package:empanturra/src/feautures/auth/verify_number_otp/components/otp_form.dart';
import 'package:flutter/material.dart';

import '../../../commom_widgets/customize_title.dart';

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const BackButton(),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const TitleText(title: 'Verificação\n de número'),
                      const SizedBox(height: 15),
                      const OtpForm(),
                      const Text(
                        'Enviamos um código de verificação para o seu número de telefone',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      CustomizeButton(text: 'Verificar', onPressed: () {}),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Não recebeu o código?'),
                          CustomizeTextButton(
                            onPressed: () {},
                            textButton: 'Reenviar (45)',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CustomizeTextButton(
                            onPressed: () {}, textButton: 'Precisa de ajuda?'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
