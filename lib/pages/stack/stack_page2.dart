import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack 2"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://a.cdn-hotels.com/gdcs/production49/d1210/1fb62470-ac69-494f-9d2c-7f80306e8ba9.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          //usando esse container em cima da imagem como opacidade
          Container(
            color: Colors.white12,
          ),
          Positioned(
            right: 10,
            left: 10,
            bottom: 48,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              elevation: 8,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "New York",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        "iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw iwaueiuaw "),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
