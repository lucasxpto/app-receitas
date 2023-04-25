import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'receita_detalhe.dart';

class ListaReceitas extends StatefulWidget {
  final String cozinha;

  const ListaReceitas({super.key, required this.cozinha});

  @override
  ListaReceitasState createState() => ListaReceitasState();
}

class ListaReceitasState extends State<ListaReceitas> {
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
              return Container(
                margin: const EdgeInsets.only(
                    left: 0, top: 20, right: 0, bottom: 0),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReceitaDetalhe(
                            receita: receita, cozinha: widget.cozinha),
                      ),
                    );
                  },
                  leading: Image.asset(
                    'images/${widget.cozinha.toString().toLowerCase().replaceAll(RegExp(r'[^\w\s]+'), '')}/${receita['imagem']}',
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    receita['nome'],
                    style: const TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  subtitle: Text(receita['modo_de_preparo'],
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white)),
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return const Text("Erro ao carregar receitas");
        }
        return const CircularProgressIndicator();
      },
    );
  }
}

Future<Map<String, dynamic>> carregarReceitasJson() async {
  String jsonString = await rootBundle.loadString('data/receitas.json');
  return jsonDecode(jsonString);
}
