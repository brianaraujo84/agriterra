import 'package:agriterra/presentation/core/validators/validators.dart';
import 'package:flutter/material.dart';

class Vaccine with Validators {
  Vaccine({
    @required this.id,
    @required this.name,
    @required this.fechaRegistro,
  });

  int id;
  String name;
  DateTime fechaRegistro;

  factory Vaccine.empty() => Vaccine(
        id: 0,
        name: "",
        fechaRegistro: DateTime.now(),
      );

  factory Vaccine.fromJson(Map<String, dynamic> json) => Vaccine(
        id: json["id"],
        name: json["name"],
        fechaRegistro: DateTime.parse(json["fecha_registro"]),
      );

  String toTextPlain({int productId}) {
    final registrationDate =
        "${fechaRegistro.year.toString().padLeft(4, '0')}-${fechaRegistro.month.toString().padLeft(2, '0')}-${fechaRegistro.day.toString().padLeft(2, '0')}";
    return '{"id":$id,"name":"$name","fecha_registro":"$registrationDate", "product_template_id":$productId}';
  }

  String getRegistrationDate() {
    if (fechaRegistro != null) {
      return "${fechaRegistro.day.toString().padLeft(2, '0')}-${fechaRegistro.month.toString().padLeft(2, '0')}-${fechaRegistro.year.toString().padLeft(4, '0')}";
    } else {
      return "N/A";
    }
  }
}
