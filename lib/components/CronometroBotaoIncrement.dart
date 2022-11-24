// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CronometroBotaoIncrement extends StatelessWidget {
  final IconData icone;
  final void Function()? incOrDec;

  const CronometroBotaoIncrement({
    Key? key,
    required this.icone,
    this.incOrDec,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: incOrDec,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(15),
        backgroundColor: Colors.black,
      ),
      child: Row(
        children: [
          Icon(
            icone,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
