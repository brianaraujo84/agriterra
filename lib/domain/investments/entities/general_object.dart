import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class GeneralObject extends Equatable {
  int id;
  String name;

  GeneralObject({
    @required this.id,
    @required this.name,
  });

  factory GeneralObject.empty() => GeneralObject(
        id: 0,
        name: "",
      );

  factory GeneralObject.fromJson(Map<String, dynamic> json) => GeneralObject(
        id: json["id"],
        name: json["name"] != null ? json["name"] : "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };

  @override
  List<Object> get props => [id, name];
}
