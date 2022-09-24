import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ListView",
        ),
      ),
      body: ListView.separated(
        //utilizamos para fazer a separação da nossa lista de widgets
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.red,
            thickness: 1,
          );
          // return Container(
          //   color: Colors.black,
          //   height: 10,
          //   width: MediaQuery.of(context).size.width,
          // );
        },
        itemCount: 1000,
        itemBuilder: (context, index) {
          print("Carregando o indice $index");
          return ListTile(
            title: Text("indice é $index"),
            subtitle: Text("flutter"),
            leading: CircleAvatar(),
          );
        },
      ),
      // body: ListView.builder(
      //   itemCount: 10,
      //   itemBuilder: (context, index) {
      //     print("Carregando o indice $index");
      //     return ListTile(
      //       title: Text("indice é $index"),
      //       subtitle: Text("flutter"),
      //       leading: CircleAvatar(),
      //     );
      //   },
      // ),
    );
  }
}
