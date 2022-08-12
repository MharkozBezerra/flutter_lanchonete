import 'package:flutter/material.dart';
import 'package:flutter_lanchonete/widget/comandas_widget.dart';

class TelaMesas extends StatelessWidget {
  const TelaMesas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: [
            ComandaWidget(status: StatusComanda.livre, index: 1, valor: 0),
            ComandaWidget(status: StatusComanda.ocupado, index: 2, valor: 10.0),
            ComandaWidget(status: StatusComanda.fechado, index: 3, valor: 10.0),
            ComandaWidget(status: StatusComanda.fechado, index: 4, valor: 10.0),
            ComandaWidget(status: StatusComanda.livre, index: 5, valor: 0),
            ComandaWidget(status: StatusComanda.livre, index: 6, valor: 0),
            ComandaWidget(status: StatusComanda.livre, index: 7, valor: 0),
          ],
        ),
      ),
    );
  }
}
