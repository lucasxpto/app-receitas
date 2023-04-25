import 'package:flutter/material.dart';
import '/pages/home_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;

  const CustomAppBar({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 100,
      title: InkWell(
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            (route) => false,
          );
        },
        child: Column(
          children: [
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [
                  Colors.deepOrangeAccent,
                  Colors.yellow,
                  Colors.orange,
                ],
              ).createShader(bounds),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'DiCumê',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        PopupMenuButton(
            icon: const Icon(
              Icons.local_dining,
              color: Colors.yellow,
            ),
            iconSize: 25,
            tooltip: 'MENU',
            onSelected: (String value) {
              Navigator.of(context).pushNamed('/$value');
            },
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(
                    value: 'italiana', child: Text('Cozinha italiana')),
                PopupMenuItem(
                    value: 'japonesa', child: Text('Cozinha japonesa')),
                PopupMenuItem(
                    value: 'mexicana', child: Text('Cozinha mexicana')),
                PopupMenuItem(value: 'indiana', child: Text('Cozinha indiana')),
                PopupMenuItem(
                    value: 'francesa', child: Text('Cozinha francesa')),
              ];
            })
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
