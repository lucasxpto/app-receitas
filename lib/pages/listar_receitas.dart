import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'receita_detalhe.dart';

class ListaReceitas extends StatefulWidget {
  final String cozinha;

  ListaReceitas({required this.cozinha});

  @override
  _ListaReceitasState createState() => _ListaReceitasState();
}

class _ListaReceitasState extends State<ListaReceitas> {
  late Future<Map<String, dynamic>> receitas;

  @override
  void initState() {
    super.initState();
    receitas = carregarReceitasJson();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: receitas,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<dynamic> receitasDaCozinha =
              snapshot.data![widget.cozinha]['receitas'];

          return ListView.builder(
            itemCount: receitasDaCozinha.length,
            itemBuilder: (context, index) {
              final receita = receitasDaCozinha[index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReceitaDetalhe(
                          receita: receita, cozinha: widget.cozinha),
                    ),
                  );
                },
                minVerticalPadding: 25,
                leading: Image.asset(
                  'images/${widget.cozinha.toString().toLowerCase().replaceAll(RegExp(r'[^\w\s]+'), '')}/${receita['imagem']}',
                  width: 150,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  receita['nome'],
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                subtitle: Text(receita['modo_de_preparo'],
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white)),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text("Erro ao carregar receitas");
        }
        return CircularProgressIndicator();
      },
    );
  }
}

Future<Map<String, dynamic>> carregarReceitasJson() async {
  String jsonString = await rootBundle.loadString('data/receitas.json');
  return jsonDecode(jsonString);
}
