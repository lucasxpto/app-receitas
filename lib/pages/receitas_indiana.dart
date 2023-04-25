import 'package:flutter/material.dart';
import '/app_bar.dart';

import 'listar_receitas.dart';

class ReceitasIndianas extends StatelessWidget {
  const ReceitasIndianas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        titulo: 'Cozinha indiana',
      ),
      body: ListaReceitas(cozinha: 'indiana'),
    );
  }
}
