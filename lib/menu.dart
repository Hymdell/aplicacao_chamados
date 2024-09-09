import 'package:aplicacao_chamados/widgets/geral_app_bar.dart';
import 'package:aplicacao_chamados/widgets/menu_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  var activeScreen = 'start-screen';

  void switchScreen(String screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        appBar: GeralAppBar(
          'Menu Inicial',
          AppBar(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuButtons(
                    'Vendas',
                    const Icon(Icons.shopping_basket_rounded),
                    () {
                      switchScreen('sales-screen');
                    },
                  ),
                  const SizedBox(width: 20),
                  MenuButtons(
                    'Chamados',
                    const Icon(Icons.computer_rounded),
                    () {
                      switchScreen('calls-screen');
                    },
                  ),
                  const SizedBox(width: 20),
                  MenuButtons(
                    'Funcionários',
                    const Icon(Icons.groups_rounded),
                    () {
                      switchScreen('employees-screen');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuButtons(
                    'Metas',
                    const Icon(Icons.auto_graph_rounded),
                    () {
                      switchScreen('goals-screen');
                    },
                  ),
                  const SizedBox(width: 20),
                  MenuButtons(
                    'Produtos',
                    const Icon(Icons.warehouse_rounded),
                    () {
                      switchScreen('products-screen');
                    },
                  ),
                  const SizedBox(width: 20),
                  MenuButtons(
                    'Serviços',
                    const Icon(Icons.paste_rounded),
                    () {
                      switchScreen('services-screen');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
