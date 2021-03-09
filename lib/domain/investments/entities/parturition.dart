import 'package:agriterra/presentation/core/validators/validators.dart';
import 'package:meta/meta.dart';

class Parturition with Validators {
  Parturition({
    @required this.id,
    @required this.name,
    @required this.nroParto,
    @required this.fechaRegistro,
  });

  int id;
  String name;
  int nroParto;
  DateTime fechaRegistro;

  factory Parturition.empty() => Parturition(
        id: 0,
        name: "",
        nroParto: 0,
        fechaRegistro: DateTime.now(),
      );

  factory Parturition.fromJson(Map<String, dynamic> json) => Parturition(
        id: json["id"],
        name: json["name"],
        nroParto: json["nro_parto"],
        fechaRegistro: DateTime.parse(json["fecha_registro"]),
      );

  String toTextPlain({int productId}) {
    final registrationDate =
        "${fechaRegistro.year.toString().padLeft(4, '0')}-${fechaRegistro.month.toString().padLeft(2, '0')}-${fechaRegistro.day.toString().padLeft(2, '0')}";
    return '{"id":$id,"name":"$name","nro_parto":$nroParto,"fecha_registro":"$registrationDate", "product_template_id":$productId}';
  }

  String getRegistrationDate() {
    if (fechaRegistro != null) {
      return "${fechaRegistro.day.toString().padLeft(2, '0')}-${fechaRegistro.month.toString().padLeft(2, '0')}-${fechaRegistro.year.toString().padLeft(4, '0')}";
    } else {
      return "N/A";
    }
  }
}
