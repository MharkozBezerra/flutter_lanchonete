import 'package:flutter/material.dart';
import 'package:flutter_lanchonete/core/app_core.dart';
import 'package:flutter_lanchonete/core/app_textStyles.dart';

class CustomButtom extends StatelessWidget {
  final String titulo;

  const CustomButtom({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59,
      width: 139,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primary),
        ),
        onPressed: () {},
        child: Text(
          titulo,
          style: AppTextStyles.buttonTextBlack,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
