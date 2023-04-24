import 'package:flutter/material.dart';
import 'package:ro_roamer/app_bar.dart';

import 'listar_receitas.dart';

class ReceitasFrancesas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        titulo: 'Cozinha francesa',
      ),
      body: ListaReceitas(cozinha: 'indiana'),
    );
  }
}
