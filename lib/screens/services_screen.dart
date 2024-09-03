import 'package:aplicacao_chamados/widgets/screens_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen(this.switchScreen, {super.key});

  final void Function(String screen) switchScreen;

  @override
  State<ServicesScreen> createState() {
    return _ServicesScreenState();
  }
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ScreensAppBar('Serviços', widget.switchScreen),
        body: Container(
          color: const Color(0xFF282828),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tela de Serviços',
                    style: GoogleFonts.roboto(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
