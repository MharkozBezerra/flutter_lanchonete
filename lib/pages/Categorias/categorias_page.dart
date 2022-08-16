import 'package:flutter/material.dart';
import 'package:flutter_lanchonete/core/app_colors.dart';
import 'package:flutter_lanchonete/core/app_images.dart';
import 'package:flutter_lanchonete/core/app_textStyles.dart';

class CategoriasPage extends StatelessWidget {
  final int numeroMesa;
  CategoriasPage({Key? key, required this.numeroMesa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
            'Categorias | Mesa ${numeroMesa.toString().padLeft(2, '0')}',
            style: AppTextStyles.buttonTextBlack),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: [
          _buildCard("Bebidas", AppImagens.categoriaBebidas),
          _buildCard("Lanches", AppImagens.categoriaLanches),
          _buildCard("Pizzas", AppImagens.categoriaPizza),
          _buildCard("Pizzas", AppImagens.categoriaPizza),
          _buildCard("Pizzas", AppImagens.categoriaPizza),
          _buildCard("Pizzas", AppImagens.categoriaPizza)
        ],
      ),
    );
  }

  _buildCard(String titulo, String imagem) {
    return Stack(
      children: [
        Container(
          width: 155,
          height: 155,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                offset: Offset(1.3, 1.3),
                blurRadius: 3,
                spreadRadius: 1,
              )
            ],
            color: Colors.white,
            image: DecorationImage(
              image: NetworkImage(imagem),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 26.81,
          left: 3,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(0.2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                titulo,
                style: AppTextStyles.tituloCategoriaTextWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
