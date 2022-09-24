import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo de container"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          // color: Colors.red,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 20,
                offset: Offset(10, 10),
              )
            ],
          ),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(60),
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
