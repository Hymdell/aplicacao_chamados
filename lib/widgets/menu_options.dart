import 'package:aplicacao_chamados/on_hover_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuOptions extends StatelessWidget {
  const MenuOptions(this.text, this.color, this.icon, this.onPressed,
      {super.key});

  final String text;
  final Color color;
  final Icon icon;
  final void Function() onPressed;

  @override
  Widget build(context) {
    return OnHoverButton(
      child: ElevatedButton.icon(
        onPressed: () {
          onPressed();
        },
        icon: icon,
        style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundColor: color,
            minimumSize: const Size(600, 400),
            shape: const RoundedRectangleBorder()),
        label: Text(
          text,
          style: GoogleFonts.roboto(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
