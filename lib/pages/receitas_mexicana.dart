import 'package:flutter/material.dart';
import '/app_bar.dart';

import 'listar_receitas.dart';

class ReceitasMexicanas extends StatelessWidget {
  const ReceitasMexicanas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        titulo: 'Cozinha mexicana',
      ),
      body: ListaReceitas(cozinha: 'mexicana'),
    );
  }
}
