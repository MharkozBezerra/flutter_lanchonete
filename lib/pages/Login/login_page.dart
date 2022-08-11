import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lanchonete/core/app_core.dart';
import 'package:flutter_lanchonete/core/app_images.dart';
import 'package:flutter_lanchonete/core/app_textStyles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(child: Image.asset(AppImagens.logo)),
          const Padding(
            padding: EdgeInsets.only(top: 21),
            child: Text(
              "Usuáro",
              style: AppTextStyles.textStyleWhite,
            ),
          ),
          TextFormField(),
          Padding(
            padding: const EdgeInsets.only(top: 18.96, left: 30, right: 30),
            child: SizedBox(
              width: double.infinity,
              height: 39,
              child: ElevatedButton(
                child: Text(
                  'Acessar',
                  style: AppTextStyles.buttonTextBlack,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary)),
              ),
            ),
          ),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
