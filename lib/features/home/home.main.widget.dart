import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.to.navigate('/home');
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          leading: GestureDetector(
            onTap: () {
              Modular.to.pushNamed('/home/settings');
            },
            child: Icon(Icons.settings),
          ),
        ),
        body: RouterOutlet());
  }
}
