import 'package:flutter/material.dart';
import 'package:flutter_lanchonete/core/app_colors.dart';
import 'package:flutter_lanchonete/core/app_textStyles.dart';

class ConsumoPage extends StatelessWidget {
  final int numeroMesa;
  const ConsumoPage({Key? key, required this.numeroMesa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: Text('Produtos | Mesa ${numeroMesa.toString().padLeft(2, '0')}',
            style: AppTextStyles.buttonTextBlack),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      children: [
        Expanded(flex: 10, child: _buildList()),
        Expanded(flex: 2, child: _buildTotal()),
        _buildButton(),
        Padding(padding: EdgeInsets.only(bottom: 40)),
      ],
    );
  }

  _buildTotal() => Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Total: ', style: AppTextStyles.buttonTextBlack),
            Text('R\$ 0,00', style: AppTextStyles.buttonTextBlack),
          ],
        ),
      );
  _buildList() => ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Produto ${index + 1}',
                style: AppTextStyles.textStyleGray),
            trailing: Text('R\$ 10,00', style: AppTextStyles.buttonTextBlack),
          );
        },
      );

  _buildButton() => Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Container(
          height: 40,
          width: double.maxFinite,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.secondary),
            ),
            onPressed: () {},
            child: Text('Encerrar', style: AppTextStyles.textStyleWhite),
          ),
        ),
      );
}
