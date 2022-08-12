import 'package:flutter/material.dart';
import 'package:flutter_lanchonete/core/app_core.dart';
import 'package:flutter_lanchonete/core/app_textStyles.dart';
import 'package:flutter_lanchonete/pages/Telas/TelaConfiguracoes/tela_configuracoes.dart';
import 'package:flutter_lanchonete/pages/Telas/TelaInicial/tela_inicial.dart';
import 'package:flutter_lanchonete/pages/Telas/TelaItens/tela_itens.dart';
import 'package:flutter_lanchonete/pages/Telas/TelaMesas/tela_mesas.dart';

enum Paginas { inicio, mesas, itens, configuracoes }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final _paginas = <Widget>[
    TelaInicial(),
    TelaMesas(),
    TelaItens(),
    TelaConfiguracoes()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: Text('Mesas | Comandas', style: AppTextStyles.buttonTextBlack),
      ),
      body: _paginas.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Inicío",
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: const Icon(Icons.grid_on),
            label: "Mesas",
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: const Icon(Icons.inventory),
            label: "Itens",
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: "Config.",
          ),
        ],
      ),
    );
  }
}
