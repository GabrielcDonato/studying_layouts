import 'package:flutter/material.dart';
import 'package:studying_layout/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contextPage) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialogs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: contextPage,
                    builder: (contextDialog) => DialogCustom(contextPage));
              },
              child: Text("Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: contextPage,
                    builder: (contextPage) {
                      return SimpleDialog(
                        title: Text("SimpleDialog"),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Titulo X"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(contextPage).pop();
                            },
                            child: Text("Fechar Dialog"),
                          ),
                        ],
                      );
                    });
              },
              child: Text("Simple Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: contextPage,
                    builder: (contextPage) {
                      return AlertDialog(
                        title: Text("Alert Dialog"),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Deseja realmente salvar??"),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text("Cancelar"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Confirmar"),
                          ),
                        ],
                      );
                    });
              },
              child: Text("Alert Dialog"),
            ),
            ElevatedButton(
              onPressed: () async {
                //usando o async await conseguimos recuperar o valor que foi selecionado
                //para fazermos algo depois.
                final selectedTime = await showTimePicker(
                  context: contextPage,
                  initialTime: TimeOfDay.now(),
                );
              },
              child: Text("TimePicker"),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: contextPage,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );
                print("A data selecionada foi $selectedDate");
              },
              child: Text("DatePicker"),
            ),
            ElevatedButton(
              onPressed: () {
                showAboutDialog(context: contextPage);
              },
              child: Text("AboutDialog"),
            ),
          ],
        ),
      ),
    );
  }
}
