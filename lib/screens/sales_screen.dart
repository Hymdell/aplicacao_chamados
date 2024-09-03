import 'package:aplicacao_chamados/widgets/screens_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen(this.switchScreen, {super.key});

  final void Function(String screen) switchScreen;

  @override
  State<SalesScreen> createState() {
    return _SalesScreenState();
  }
}

class _SalesScreenState extends State<SalesScreen> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ScreensAppBar('Vendas', widget.switchScreen),
        body: Container(
          color: const Color(0xFF282828),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tela de Vendas',
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
