import 'package:flutter/material.dart';
import 'package:flutter_lanchonete/core/app_colors.dart';
import 'package:flutter_lanchonete/core/app_textStyles.dart';

enum StatusComanda { livre, ocupado, fechado }

Color statusComandaColor(StatusComanda status) {
  Color color = AppColors.statusMesaLivre;
  switch (status) {
    case StatusComanda.ocupado:
      color = AppColors.statusMesaOcupada;
      break;
    case StatusComanda.fechado:
      color = AppColors.statusMesaFechada;
      break;
    default:
      color = AppColors.statusMesaLivre;
      break;
  }
  return color;
}

String statusComandaTitulo(StatusComanda status) {
  String titulo = 'Livre';
  switch (status) {
    case StatusComanda.ocupado:
      titulo = 'Ocupado';
      break;
    case StatusComanda.fechado:
      titulo = 'Fechado';
      break;
    case StatusComanda.livre:
      titulo = 'Livre';
      break;
  }
  return titulo;
}

class ComandaWidget extends StatelessWidget {
  final StatusComanda status;
  final int index;
  final double valor;
  const ComandaWidget(
      {Key? key,
      required this.status,
      required this.index,
      required this.valor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (status == StatusComanda.livre) {
          //Navigator.pushNamed(context, '/comanda', arguments: index);
          Navigator.of(context).pushNamed('/categorias', arguments: index);
        } else {
          print('Navegando para tela de consumo');
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: statusComandaColor(status),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        width: 100,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 9),
              child: Text(
                statusComandaTitulo(status),
                style: AppTextStyles.textStyleComandaWhite,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                '${index.toString().padLeft(2, '0')}',
                style: AppTextStyles.numeroComandaWhite,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                '${valor > 0 ? valor.toStringAsFixed(2) : ''}',
                style: AppTextStyles.textStyleValorWhite,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
