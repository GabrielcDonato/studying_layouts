import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialBanner"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final materialBanner = MaterialBanner(
                    backgroundColor: Colors.green,
                    content: Text("usuario salvo com sucesso"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: Text("Remover"))
                    ],
                  );
                  ScaffoldMessenger.of(context)
                      .showMaterialBanner(materialBanner);
                },
                child: Text("Simple MaterialBanner")),
          ],
        ),
      ),
    );
  }
}
