import 'package:flutter/material.dart';
import '/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double largura = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(
        titulo: 'Início',
      ),
      body: GridView.count(
        padding:
            const EdgeInsets.only(top: 28, left: 10, right: 10, bottom: 28),
        crossAxisCount: largura < 600 ? 1 : 2,
        mainAxisSpacing: 50,
        crossAxisSpacing: 50,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/japonesa');
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: const Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.multiply,
                  ),
                  image: const AssetImage('images/japonesa/ramen.webp'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: const [
                  Align(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Cozinha japonesa',
                        style: TextStyle(
                          fontSize: 25,
                          shadows: [
                            Shadow(
                              blurRadius: 3.0,
                              color: Colors.black,
                              offset: Offset(1, 2),
                            )
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/mexicana');
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: const Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.multiply,
                  ),
                  image: const AssetImage('images/mexicana/tacos.webp'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: const [
                  Align(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Cozinha mexicana',
                        style: TextStyle(
                          fontSize: 25,
                          shadows: [
                            Shadow(
                              blurRadius: 3.0,
                              color: Colors.black,
                              offset: Offset(1, 2),
                            )
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/indiana');
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: const Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.multiply,
                  ),
                  image: const AssetImage('images/indiana/biryani.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: const [
                  Align(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Indiana',
                        style: TextStyle(
                          fontSize: 25,
                          shadows: [
                            Shadow(
                              blurRadius: 3.0,
                              color: Colors.black,
                              offset: Offset(1, 2),
                            )
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/italiana');
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: const Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.multiply,
                  ),
                  image: const AssetImage('images/italiana/lasanha.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: const [
                  Align(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Italiana',
                        style: TextStyle(
                          fontSize: 25,
                          shadows: [
                            Shadow(
                              blurRadius: 3.0,
                              color: Colors.black,
                              offset: Offset(1, 2),
                            )
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/francesa');
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: const Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.multiply,
                  ),
                  image:
                      const AssetImage('images/francesa/boeuf-burguignon.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: const [
                  Align(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Francesa',
                        style: TextStyle(
                          fontSize: 25,
                          shadows: [
                            Shadow(
                              blurRadius: 3.0,
                              color: Colors.black,
                              offset: Offset(1, 2),
                            )
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
