import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeralAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GeralAppBar(this.title, this.appBar, {super.key});

  final String title;
  final AppBar appBar;

  @override
  Widget build(context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Text('Menu Inicial',
          style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
