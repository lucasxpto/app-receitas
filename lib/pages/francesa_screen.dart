import 'package:flutter/material.dart';
import 'package:ro_roamer/app_bar.dart';

class FrancesaScreen extends StatelessWidget {
  const FrancesaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Text('francesa'),
    );
  }
}
