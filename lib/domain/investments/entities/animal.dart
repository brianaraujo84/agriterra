import 'package:agriterra/domain/investments/entities/general_object.dart';
import 'package:agriterra/presentation/core/validators/validators.dart';
import 'package:meta/meta.dart';

class Animal with Validators {
  int id;
  String name;
  String nombreAnimal;
  String defaultCode;
  GeneralObject responsibleId;
  double listPrice;
  GeneralObject companyId;
  GeneralObject estadoAnimalId;
  DateTime fechaRegistro;
  String description;
  int edadMeses;
  int produccionLeche;

  Animal({
    @required this.id,
    @required this.name,
    @required this.nombreAnimal,
    @required this.defaultCode,
    @required this.responsibleId,
    @required this.listPrice,
    @required this.companyId,
    @required this.estadoAnimalId,
    @required this.fechaRegistro,
    @required this.description,
    @required this.edadMeses,
    @required this.produccionLeche,
  });

  factory Animal.empty() => Animal(
        id: 0,
        name: "",
        nombreAnimal: "",
        defaultCode: "",
        responsibleId: GeneralObject(id: 0, name: ""),
        listPrice: 0,
        companyId: GeneralObject.empty(),
        estadoAnimalId: GeneralObject.empty(),
        fechaRegistro: new DateTime.now(),
        edadMeses: 0,
        description: "",
        produccionLeche: 0,
      );

  String getRegistrationDate() {
    if (fechaRegistro != null) {
      return "${fechaRegistro.day.toString().padLeft(2, '0')}-${fechaRegistro.month.toString().padLeft(2, '0')}-${fechaRegistro.year.toString().padLeft(4, '0')}";
    } else {
      return "N/A";
    }
  }
}
