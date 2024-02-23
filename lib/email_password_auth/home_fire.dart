import 'package:flutter/material.dart';

import 'fire_function.dart';
import 'login_fire.dart';


class Home_Fire extends StatelessWidget {
  const Home_Fire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          titleTextStyle: const TextStyle(fontSize: 20),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                FireBaseHelper().logout().then((value) =>
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Login_Fire())));
              },
              child: Text("SignOut")),
        ));
  }
}
