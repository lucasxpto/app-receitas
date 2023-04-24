import 'package:flutter/material.dart';
import 'package:ro_roamer/app_bar.dart';

class ReceitaDetalhe extends StatelessWidget {
  final Map<String, dynamic> receita;
  final String cozinha;

  ReceitaDetalhe({required this.receita, required this.cozinha});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        titulo: receita['nome'],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
                'images/${cozinha.toString().toLowerCase().replaceAll(RegExp(r'[^\w\s]+'), '')}/${receita['imagem']}'),
            SizedBox(height: 20),
            Text(
              receita['nome'],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Ingredientes',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
            SizedBox(height: 10),
            ...receita['ingredientes'].map<Widget>((ingrediente) {
              return Text(
                ingrediente,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              );
            }).toList(),
            SizedBox(height: 20),
            Text(
              'Modo de preparo',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              receita['modo_de_preparo'],
              style: TextStyle(
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
