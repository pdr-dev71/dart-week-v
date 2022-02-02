import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_textformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppbar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (_, constrainst) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constrainst.maxHeight,
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: context.textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.theme.primaryColorDark,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    VakinhaTextFormField(label: 'E-mail'),
                    const SizedBox(
                      height: 30,
                    ),
                    VakinhaTextFormField(label: 'Senha'),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: VakinhaButton(
                        label: 'ENTRAR',
                        width: context.width,
                        onPressed: () {},
                      ),
                    ),
                    //Empurrar o texto pra baixo
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('não possui uma conta?'),
                        TextButton(
                          onPressed: () {
                            Get.toNamed('/auth/register');
                          },
                          child: Text(
                            'Cadastre-se',
                            style: VakinhaUi.textBold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
