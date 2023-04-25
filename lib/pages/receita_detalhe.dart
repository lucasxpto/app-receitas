import 'package:flutter/material.dart';
import '/app_bar.dart';

class ReceitaDetalhe extends StatelessWidget {
  final Map<String, dynamic> receita;
  final String cozinha;

  const ReceitaDetalhe(
      {super.key, required this.receita, required this.cozinha});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        titulo: receita['nome'],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 28, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
                'images/${cozinha.toString().toLowerCase().replaceAll(RegExp(r'[^\w\s]+'), '')}/${receita['imagem']}'),
            const SizedBox(height: 20),
            Text(
              receita['nome'],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ingredientes',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
            const SizedBox(height: 10),
            ...receita['ingredientes'].map<Widget>((ingrediente) {
              return Text(
                ingrediente,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              );
            }).toList(),
            const SizedBox(height: 20),
            const Text(
              'Modo de preparo',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              receita['modo_de_preparo'],
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
