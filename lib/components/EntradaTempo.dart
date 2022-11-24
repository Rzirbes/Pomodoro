// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'CronometroBotaoIncrement.dart';

class EntrdaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntrdaTempo({
    required this.titulo,
    required this.valor,
    this.inc,
    this.dec,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CronometroBotaoIncrement(
              icone: Icons.arrow_upward,
              incOrDec: inc,
            ),
            Text(
              '$valor min',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            CronometroBotaoIncrement(
              icone: Icons.arrow_downward,
              incOrDec: dec,
            ),
          ],
        )
      ],
    );
  }
}
