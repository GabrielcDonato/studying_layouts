import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.center,
        //conseguimos dizer que a nossa stack tem um alinhamento padrão.
        //se meus widgets não tiverem um align vao receber por padrão o align da minha stack
        children: [
          Container(
            color: Colors.green,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.blue,
              height: 300,
              width: 300,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.pink,
              height: 150,
              width: 150,
            ),
          ),
          Positioned(
            top: 40,
            right: 100,
            child: Container(
              color: Colors.pink,
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
