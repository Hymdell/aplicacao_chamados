import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuButtons extends StatelessWidget {
  const MenuButtons(this.text, this.icon, this.onPressed, {super.key});

  final String text;
  final Icon icon;
  final void Function() onPressed;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
            Theme.of(context).colorScheme.onPrimary.withOpacity(0.0)
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: ElevatedButton.icon(
        onPressed: () {
          onPressed();
        },
        icon: icon,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(600, 400),
          shape: const RoundedRectangleBorder(),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        label: Text(
          text,
          style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
