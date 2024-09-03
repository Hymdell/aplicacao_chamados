import 'package:aplicacao_chamados/widgets/screens_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen(this.switchScreen, {super.key});

  final void Function(String screen) switchScreen;

  @override
  State<ProductsScreen> createState() {
    return _ProductsScreenState();
  }
}

class _ProductsScreenState extends State<ProductsScreen> {

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ScreensAppBar('Produtos', widget.switchScreen),
        body: Container(
          color: const Color(0xFF282828),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tela de Produtos',
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
