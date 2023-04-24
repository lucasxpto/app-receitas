import 'package:flutter/material.dart';
import 'package:ro_roamer/app_bar.dart';

class IndianaScreen extends StatelessWidget {
  const IndianaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Text('indiana'),
    );
  }
}
