import 'package:aplicacao_chamados/screens/calls_screen.dart';
import 'package:aplicacao_chamados/screens/employees_screen.dart';
import 'package:aplicacao_chamados/screens/goals_screen.dart';
import 'package:aplicacao_chamados/screens/products_screen.dart';
import 'package:aplicacao_chamados/screens/sales_screen.dart';
import 'package:aplicacao_chamados/screens/services_screen.dart';
import 'package:aplicacao_chamados/screens/start_screen.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  var activeScreen = 'start-screen';

  final Map<String, Widget Function(Function(String))> screens = {
    'start-screen': (switchScreen) => StartScreen(switchScreen),
    'sales-screen': (switchScreen) => SalesScreen(switchScreen),
    'calls-screen': (switchScreen) => CallsScreen(switchScreen),
    'employees-screen': (switchScreen) => EmployeesScreen(switchScreen),
    'goals-screen': (switchScreen) => GoalsScreen(switchScreen),
    'products-screen': (switchScreen) => ProductsScreen(switchScreen),
    'services-screen': (switchScreen) => ServicesScreen(switchScreen),
  };

  void switchScreen(String screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  @override
  Widget build(context) {
    return screens[activeScreen]?.call(switchScreen) ??
        StartScreen(switchScreen);
  }
}
