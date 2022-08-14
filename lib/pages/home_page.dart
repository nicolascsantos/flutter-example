import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Primeiro app em Flutter.'),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              child: const Center(
                child: Text(
                  'Olá mundo!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  color: Colors.green,
                  height: 100,
                  width: 200,
                  child: const Center(child: Text('Primeiro container')),
                ),
                Container(
                  color: Colors.black,
                  height: 100,
                  width: 200,
                  child: const Center(
                      child: Text('Segundo container',
                          style: TextStyle(color: Colors.white))),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Configurações'),
          ],
        ));
  }
}
