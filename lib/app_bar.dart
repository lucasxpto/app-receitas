import 'package:flutter/material.dart';
import 'package:ro_roamer/pages/home_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;

  const CustomAppBar({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      toolbarHeight: 70,
      backgroundColor: Colors.black,
      title: InkWell(
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
            (route) => false,
          );
        },
        child: Column(
          children: [
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  Colors.deepOrangeAccent,
                  Colors.yellow,
                  Colors.orange,
                ],
              ).createShader(bounds),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'DiCumê',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        PopupMenuButton(
            icon: Icon(
              Icons.local_dining,
              color: Colors.yellow,
            ),
            iconSize: 25,
            tooltip: 'MENU',
            onSelected: (String value) {
              Navigator.of(context).pushNamed('/$value');
            },
            itemBuilder: (BuildContext context) {
              return [
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
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
