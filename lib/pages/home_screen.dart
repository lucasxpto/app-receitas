import 'package:flutter/material.dart';
import 'package:ro_roamer/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        titulo: 'Início',
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/japonesa');
            },
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 0),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.multiply,
                  ),
                  image: AssetImage('images/japonesa/ramen.webp'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
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
              margin: EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 0),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.multiply,
                  ),
                  image: AssetImage('images/mexicana/tacos.webp'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
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
              margin: EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 0),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.multiply,
                  ),
                  image: AssetImage('images/indiana/biryani.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
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
              margin: EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 0),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.multiply,
                  ),
                  image: AssetImage('images/italiana/lasanha.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
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
              margin: EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 0),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.multiply,
                  ),
                  image: AssetImage('images/francesa/boeuf-burguignon.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
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
