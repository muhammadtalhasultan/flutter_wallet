import 'package:flutter/material.dart';
import 'package:flutter_wallet/ui/screen/drawer.dart';
import 'package:flutter_wallet/ui/screen/home.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          DrawerScreen(),
          HomePage(),
        ],
      ),
    );
  }
}
