import 'package:aplicacao_chamados/widgets/screens_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployeesScreen extends StatefulWidget {
  const EmployeesScreen(this.switchScreen, {super.key});

  final void Function(String screen) switchScreen;

  @override
  State<EmployeesScreen> createState() {
    return _EmployeesScreenState();
  }
}

class _EmployeesScreenState extends State<EmployeesScreen> {
  void changeScreen() {
    setState(() {
      widget.switchScreen('start-screen');
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ScreensAppBar('Funcionários', widget.switchScreen),
        body: Container(
          color: const Color(0xFF282828),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tela de Funcionários',
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
