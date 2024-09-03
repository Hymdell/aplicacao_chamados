import 'package:aplicacao_chamados/widgets/screens_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen(this.switchScreen, {super.key});

  final void Function(String screen) switchScreen;

  @override
  State<CallsScreen> createState() {
    return _CallsScreenState();
  }
}

class _CallsScreenState extends State<CallsScreen> {
  void changeScreen() {
    setState(() {
      widget.switchScreen('start-screen');
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ScreensAppBar('Chamados', widget.switchScreen),
        body: Container(
          color: const Color(0xFF282828),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tela de Chamados',
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
