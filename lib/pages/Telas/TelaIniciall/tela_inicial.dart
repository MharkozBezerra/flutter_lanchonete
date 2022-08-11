import 'package:flutter/material.dart';
import 'package:flutter_lanchonete/core/app_textStyles.dart';
import 'package:flutter_lanchonete/widget/widget_customButton.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 32, right: 27),
        height: 300,
        width: double.maxFinite,
        child: Column(
          children: [
            Text(
              "Mesas ou comandas",
              style: AppTextStyles.textStyleGray,
            ),
            TextFormField(),
            Padding(
              padding: const EdgeInsets.only(top: 18.96),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CustomButtom(titulo: 'Adicionar Itens'),
                  const CustomButtom(titulo: 'Ver Itens'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
