import 'package:flutter/material.dart';
import 'package:ro_roamer/app_bar.dart';

import 'listar_receitas.dart';

class ReceitasMexicanas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        titulo: 'Cozinha mexicana',
      ),
      body: ListaReceitas(cozinha: 'mexicana'),
    );
  }
}
