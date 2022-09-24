import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBars"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text("usuario salvo com sucesso"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                },
                child: Text("Simple Snackbar")),
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text("usuario salvo com sucesso"),
                    action: SnackBarAction(
                      label: "Desfazer",
                      onPressed: () {
                        print("desfeito");
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: Text("Action Snackbar")),
          ],
        ),
      ),
    );
  }
}
