import 'package:agriterra/domain/investments/entities/animal.dart';
import 'package:agriterra/domain/investments/entities/general_object.dart';
import 'package:meta/meta.dart';

class AnimalModel extends Animal {
  AnimalModel({
    @required int id,
    @required String name,
    @required String nombreAnimal,
    @required String defaultCode,
    @required GeneralObject responsibleId,
    @required double listPrice,
    @required GeneralObject companyId,
    @required GeneralObject estadoAnimalId,
    @required DateTime fechaRegistro,
    @required String description,
    @required int edadMeses,
    @required int produccionLeche,
  }) : super(
          id: id,
          name: name,
          nombreAnimal: nombreAnimal,
          defaultCode: defaultCode,
          responsibleId: responsibleId,
          listPrice: listPrice,
          companyId: companyId,
          estadoAnimalId: estadoAnimalId,
          fechaRegistro: fechaRegistro,
          description: description,
          edadMeses: edadMeses,
          produccionLeche: produccionLeche,
        );

  Animal toDomain() {
    return Animal(
      id: id,
      name: name,
      nombreAnimal: nombreAnimal,
      defaultCode: defaultCode,
      responsibleId: responsibleId,
      listPrice: listPrice,
      companyId: companyId,
      estadoAnimalId: estadoAnimalId,
      fechaRegistro: fechaRegistro,
      description: description,
      edadMeses: edadMeses,
      produccionLeche: produccionLeche,
    );
  }

  factory AnimalModel.fromDomain(Animal animal) {
    return AnimalModel(
      id: animal.id,
      name: animal.name,
      nombreAnimal: animal.nombreAnimal,
      defaultCode: animal.defaultCode,
      responsibleId: animal.responsibleId,
      listPrice: animal.listPrice,
      companyId: animal.companyId,
      estadoAnimalId: animal.estadoAnimalId,
      fechaRegistro: animal.fechaRegistro,
      description: animal.description,
      edadMeses: animal.edadMeses,
      produccionLeche: animal.produccionLeche,
    );
  }

  factory AnimalModel.fromJson(Map<String, dynamic> json) => AnimalModel(
        id: json["id"],
        name: json["name"]!= null ?  json["name"] : "",
        nombreAnimal:
            json["nombre_animal"] != null ? json["nombre_animal"] : "",
        defaultCode: json["default_code"] != null ? json["default_code"] : "",
        responsibleId:
            json["responsible_id"] != null && json["responsible_id"] != 'null'
                ? GeneralObject.fromJson(json["responsible_id"])
                : GeneralObject.empty(),
        listPrice: json["list_price"].toDouble(),
        companyId: json["company_id"] != null && json["company_id"] != 'null'
            ? GeneralObject.fromJson(json["company_id"])
            : GeneralObject.empty(),
        estadoAnimalId: json["estado_animal_id"] != null &&
                json["estado_animal_id"] != 'null'
            ? GeneralObject.fromJson(json["estado_animal_id"])
            : GeneralObject.empty(),
        fechaRegistro: json["fecha_registro"] != null
            ? DateTime.parse(json["fecha_registro"])
            : null,
        description: json["description"] != null ? json["description"] : "",
        edadMeses: json["edad_meses"],
        produccionLeche:
            json["produccion_leche"] != null ? json["produccion_leche"] : 0,
      );

  String toTextPlain({String companyId, String userId}) {
    final animalStateId = estadoAnimalId.id;
    final registrationDate =
        "${fechaRegistro.year.toString().padLeft(4, '0')}-${fechaRegistro.month.toString().padLeft(2, '0')}-${fechaRegistro.day.toString().padLeft(2, '0')}";
    return '{"image_1920":false,"nombre_animal":"$nombreAnimal","type":"product","categ_id":7,"default_code":"$defaultCode","standard_price":$listPrice,"company_id":$companyId,"fecha_registro":"$registrationDate","edad_meses":$edadMeses,"estado_animal_id": $animalStateId,"responsible_id":$userId, "description": "$description", "produccion_leche": $produccionLeche, "tracking":"none", "purchase_line_warn":"no-message"}';
  }
}
