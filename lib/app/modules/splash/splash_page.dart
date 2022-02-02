import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_textformfield.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF140E0E),
        //Empilhar componentes
        child: Stack(
          children: [
            Align(
              //Alinhar a imagem ao centro e parte de baixo da tela
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                //uso do context para obter tamanho da tela
                width: context.width,
                child: Image.asset(
                  'assets/images/lanche.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: context.heightTransformer(reducedBy: 85),
                  ),
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(
                    height: 60,
                  ),
                  VakinhaButton(
                    label: 'ACESSAR',
                    height: 40,
                    width: context.widthTransformer(reducedBy: 40),
                    onPressed: () {
                      Get.toNamed('/auth/login');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
