import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = "";
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  String categoria = "valor padrão";

  @override
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
      ),
      body: SingleChildScrollView(
        //por causa do maxlines do textformfiled ser null, dps de muita coisa escrita quebra o teclado
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // TextField(
                //   onChanged: (value) {
                //     setState(() {
                //       texto = value;
                //     });
                //   },
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // Text("Texto digitado: $texto"),

                // A diferença do textFormField para o textField é que ele possui as validações.

                TextFormField(
                  // maxLines: 10,
                  maxLines:
                      null, //caso eu coloque null ele vai se adaptando conforme eu escrevo
                  //ao inves de colocar tudo em uma só linha.
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                    ),
                    labelText: "Nome Completo",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.pink),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    isDense: true,
                  ),
                  controller: nameEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? a) {
                    if (a == null || a.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                    ),
                    labelText: "Senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.pink),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    isDense: true,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? a) {
                    if (a == null || a.isEmpty) {
                      return 'Senha não preenchida';
                    }
                  },
                ),
                DropdownButtonFormField<String>(
                  value: categoria,
                  elevation: 16,
                  icon: const Icon(Icons.get_app),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        categoria = newValue;
                      });
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Categoria não preenchida";
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: "valor padrão",
                      child: Text("Sem categoria"),
                    ),
                    DropdownMenuItem(
                      value: "Categoria 1",
                      child: Text("Categoria 1"),
                    ),
                    DropdownMenuItem(
                      value: "Categoria 2",
                      child: Text("Categoria 2"),
                    ),
                    DropdownMenuItem(
                      value: "Categoria 3",
                      child: Text("Categoria 3"),
                    ),
                  ],
                ),

                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;

                    var message = "Formulario inválido";

                    if (formValid) {
                      message = "Formulario Válido (Name: ${nameEC.text})";
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                  },
                  child: Text("Salvar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
