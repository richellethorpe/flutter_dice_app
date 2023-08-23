import 'package:flutter/cupertino.dart';

class StyledText extends StatelessWidget {
   const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 6, 6, 6),
        fontSize: 16,
      ),
    );
  }
}
