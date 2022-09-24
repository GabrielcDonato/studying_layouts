import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Builder"),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constrains) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  height: constrains.maxHeight * .75,
                  width: constrains.maxWidth * .5,
                ),
                Container(
                  color: Colors.blue,
                  height: constrains.maxHeight,
                  width: constrains.maxWidth * .5,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
