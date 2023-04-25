import 'package:flutter/material.dart';
import '/app_bar.dart';

import 'listar_receitas.dart';

class ReceitasItalianas extends StatelessWidget {
  const ReceitasItalianas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        titulo: 'Cozinha italiana',
      ),
      body: ListaReceitas(cozinha: 'italiana'),
    );
  }
}
