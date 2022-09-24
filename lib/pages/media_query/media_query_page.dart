import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final maxHeight = mediaQuery.size.height;
    final maxWidth = mediaQuery.size.width;

    print("Orientação: ${mediaQuery.orientation}");
    print("Altura Total: $maxHeight");
    print("Largura Total: $maxWidth");
    print("Tamanho StatusBar: ${mediaQuery.padding.top}");
    print("Tamanho AppBar Default: ${kToolbarHeight}");

    var appBar = AppBar(
      title: Text("Media Query"),
    );
    print("AppBar Customizada ${appBar.preferredSize.height}");

    final statusBar = mediaQuery.padding.top;
    final heightBody = maxHeight - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              // height: heightBody / 2,
              height: heightBody * 0.5,
              width: maxWidth,
            ),
          ],
        ),
      ),
    );
  }
}
