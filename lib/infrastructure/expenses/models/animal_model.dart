

import 'package:agriterra/domain/expenses/entities/animal_p_e.dart';
import 'package:agriterra/domain/investments/entities/general_object.dart';
import 'package:meta/meta.dart';

class AnimalModel extends AnimalPE{
  AnimalModel({
    @required int id,
    @required String name,
    @required DateTime fechaRegistro,
    @required double quantity,
    @required double amount,
    @required double total_amount,
    @required GeneralObject user_id,
    @required GeneralObject product_id,

  }) : super(
    id: id,
    name: name,
    fechaRegistro: fechaRegistro,
    quantity: quantity,
    amount: amount,
    total_amount: total_amount,
    user_id: user_id,
    product_id: product_id,
  );

  AnimalPE toDomain() {
    return AnimalPE(
      id: id,
      name: name,
      fechaRegistro: fechaRegistro,
      quantity: quantity,
      amount: amount,
      total_amount: total_amount,
      user_id: user_id,
      product_id: product_id,
    );
  }

  factory AnimalModel.fromDomain(AnimalPE animal) {
    return AnimalModel(
      id: animal.id,
      name: animal.name,
      fechaRegistro: animal.fechaRegistro,
      quantity: animal.quantity,
      amount: animal.amount,
      total_amount: animal.total_amount,
      user_id: animal.user_id,
      product_id: animal.product_id,
    );
  }

  factory AnimalModel.fromJson(Map<String, dynamic> json) => AnimalModel(
    id: json["id"],
    name: json["name"]!= null ?  json["name"] : "",
    fechaRegistro: json["date"] != null ?  DateTime.parse(json["date"]) : null,
    quantity: json["quantity"] !=null ? json["quantity"] : "",
    amount: json["amount"] != null ? json["amount"] : "",
    total_amount: json["total_amount"] != null ? json["total_amount"] : "",
    user_id: json["user_id"] != null && json["user_id"] != 'null' ? GeneralObject.fromJson(json["user_id"]) : GeneralObject.emply(),
    product_id: json["product_id"] != null && json["product_id"] != 'null' ? GeneralObject.fromJson(json["product_id"]): GeneralObject.emply(),
  );

  String toTextPlain({String userId}) {
    final productList =  product_id.id;
    final registrationDate =
        "${fechaRegistro.year.toString().padLeft(4, '0')}-${fechaRegistro.month.toString().padLeft(2, '0')}-${fechaRegistro.day.toString().padLeft(2, '0')}";
    return '{"name":"$name","date":"$registrationDate","quantity":$quantity,"amount":$amount,"user_id":$userId,"type_move":"gasto","category_id":1,"product_id":$productList}';
  }
}
