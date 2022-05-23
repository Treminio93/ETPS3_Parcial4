import 'package:etps3_parcial4_2548012011_2507272016/app/user_interface/paginas/home/principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppMaps());
}

class AppMaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Maps Parcial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: PrincipalPage(),
    );
  }
}
