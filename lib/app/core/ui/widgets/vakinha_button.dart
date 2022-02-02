import 'package:flutter/material.dart';

class VakinhaButton extends StatelessWidget {
  final VoidCallback? onPressed; //Funcao quando for clicado
  final String label;
  final double? width;
  final double height;
  final Color? color;

  const VakinhaButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.width,
      this.height = 50, //50 e o valor caso não seja definido
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Definir altura e largura do botão
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        //aplicar estilo ao botao
        style: ElevatedButton.styleFrom(
          //Arredondamento
          shape: StadiumBorder(),
          primary: color,
        ),
      ),
    );
  }
}
