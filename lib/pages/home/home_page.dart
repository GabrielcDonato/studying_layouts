import 'package:flutter/material.dart';

enum PopupMenuPages { container }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            itemBuilder: (context) {
              return <PopupMenuItem<PopupMenuPages>>[];
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
