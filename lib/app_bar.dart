import 'package:flutter/material.dart';
import 'package:ro_roamer/pages/home_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

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
        child: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [
              Colors.deepOrangeAccent,
              Colors.yellow,
              Colors.orange,
            ],
          ).createShader(bounds),
          child: Text(
            'DiCumê',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
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
