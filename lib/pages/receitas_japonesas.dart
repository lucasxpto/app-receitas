import 'package:flutter/material.dart';
import '/app_bar.dart';

import 'listar_receitas.dart';

class ReceitasJaponesas extends StatelessWidget {
  const ReceitasJaponesas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        titulo: 'Cozinha japonesa',
      ),
      body: ListaReceitas(cozinha: 'japonesa'),
    );
  }
}
