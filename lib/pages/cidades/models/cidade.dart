import 'dart:convert';

class Cidade {
  final String cidade;
  final String estado;

  Cidade(this.cidade, this.estado);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'cidade': cidade});
    result.addAll({'estado': estado});

    return result;
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      map['cidade'] ?? '',
      map['estado'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source));
}
