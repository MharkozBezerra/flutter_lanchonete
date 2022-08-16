import 'package:flutter/material.dart';
import 'package:flutter_lanchonete/core/app_colors.dart';
import 'package:flutter_lanchonete/pages/Categorias/categorias_page.dart';
import 'package:flutter_lanchonete/pages/Home/home_page.dart';
import 'package:flutter_lanchonete/pages/Login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lanchonete',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        // ignore: deprecated_member_use
        accentColor: AppColors.secondary,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/categorias': (context) => CategoriasPage(
              numeroMesa: ModalRoute.of(context)!.settings.arguments as int,
            ),
      },
    );
  }
}
