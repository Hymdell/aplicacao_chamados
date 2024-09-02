import 'package:aplicacao_chamados/widgets/menu_options.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatefulWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function(String screen) switchScreen;

  @override
  State<StartScreen> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu Inicial',
              style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          backgroundColor: const Color(0xFF717171),
        ),
        body: Container(
          color: const Color(0xFF282828),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MenuOptions(
                      'Vendas',
                      const Color.fromARGB(255, 90, 90, 90),
                      const Icon(Icons.shopping_basket_rounded),
                      () {
                        widget.switchScreen('sales-screen');
                      },
                    ),
                    const SizedBox(width: 20),
                    MenuOptions(
                      'Chamados',
                      const Color.fromARGB(255, 90, 90, 90),
                      const Icon(Icons.computer_rounded),
                      () {
                        widget.switchScreen('calls-screen');
                      },
                    ),
                    const SizedBox(width: 20),
                    MenuOptions(
                      'Funcionários',
                      const Color.fromARGB(255, 90, 90, 90),
                      const Icon(Icons.groups_rounded),
                      () {
                        widget.switchScreen('employees-screen');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MenuOptions(
                      'Metas',
                      const Color.fromARGB(255, 90, 90, 90),
                      const Icon(Icons.auto_graph_rounded),
                      () {
                        widget.switchScreen('goals-screen');
                      },
                    ),
                    const SizedBox(width: 20),
                    MenuOptions(
                      'Produtos',
                      const Color.fromARGB(255, 90, 90, 90),
                      const Icon(Icons.warehouse_rounded),
                      () {
                        widget.switchScreen('products-screen');
                      },
                    ),
                    const SizedBox(width: 20),
                    MenuOptions(
                      'Serviços',
                      const Color.fromARGB(255, 90, 90, 90),
                      const Icon(Icons.paste_rounded),
                      () {
                        widget.switchScreen('services-screen');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
