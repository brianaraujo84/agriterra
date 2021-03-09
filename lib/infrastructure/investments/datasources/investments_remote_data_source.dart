import 'package:agriterra/domain/investments/entities/general_object.dart';
import 'package:agriterra/domain/investments/entities/parturition.dart';
import 'package:agriterra/domain/investments/entities/vaccine.dart';
import 'package:agriterra/infrastructure/core/dio_client.dart';
import 'package:agriterra/infrastructure/investments/models/animal_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

abstract class InvestmentsRemoteDataSource {
  Future<Unit> createAnimal({
    AnimalModel animalModel,
    String companyId,
    String userId,
  });

  Future<Unit> updateAnimal({
    AnimalModel animalModel,
    String companyId,
    String userId,
  });

  Future<Unit> deleteAnimal({int animalId});

  Future<List<AnimalModel>> getAnimalInventoryByCompany({String companyId});

  Future<List<GeneralObject>> getAnimalStates();

  Future<List<Vaccine>> getAnimalVaccines({
    int productId,
  });

  Future<List<Parturition>> getAnimalParturition({
    int productId,
  });

  Future<Unit> createAnimalVaccine({
    @required int productId,
    @required Vaccine vaccine,
  });

  Future<Unit> createAnimalParturition({
    @required int productId,
    @required Parturition parturition,
  });

  Future<Unit> updateAnimalVaccine({
    @required int productId,
    @required Vaccine vaccine,
  });

  Future<Unit> updateAnimalParturition({
    @required int productId,
    @required Parturition parturition,
  });

  Future<Unit> deleteAnimalVaccine({
    @required int vaccineId,
  });

  Future<Unit> deleteAnimalParturition({
    @required int parturitionId,
  });
}

@LazySingleton(as: InvestmentsRemoteDataSource)
class InvestmentsRemoteDataSourceImpl implements InvestmentsRemoteDataSource {
  static const String _api = "/api";
  static const String _urlAnimalsInventory = "$_api/product.template";
  static const String _urlAnimalStates = "$_api/estado.animal";
  static const String _urlAnimalVaccines = "$_api/vacunacion.animal";
  static const String _urlAnimalParturition = "$_api/parto.animal";

  final DioClient dioClient;

  InvestmentsRemoteDataSourceImpl({this.dioClient});

  @override
  Future<List<AnimalModel>> getAnimalInventoryByCompany({
    String companyId,
  }) async {
    try {
      final response = await dioClient.get(
        _urlAnimalsInventory,
        queryParameters: {
          "include_fields":
              "['name', 'id' ,'nombre_animal','default_code','responsible_id', 'list_price', 'company_id','estado_animal_id', 'fecha_registro', 'list_price', 'edad_meses', 'description', 'produccion_leche']",
          "filters": "[('company_id.id', '=', '$companyId')]",
        },
      );

      if (response["count"] > 0) {
        return List<AnimalModel>.from(
          response["results"].map((x) => AnimalModel.fromJson(x)),
        );
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Unit> deleteAnimal({int animalId}) async {
    try {
      await dioClient.delete("$_urlAnimalsInventory/$animalId");
      return unit;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<GeneralObject>> getAnimalStates() async {
    try {
      final response = await dioClient.get(_urlAnimalStates);
      return List<GeneralObject>.from(
        response["results"].map((x) => GeneralObject.fromJson(x)),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Unit> createAnimal({
    AnimalModel animalModel,
    String companyId,
    String userId,
  }) async {
    try {
      print(animalModel.toTextPlain(
        companyId: companyId,
        userId: userId,
      ));
      final response = await dioClient.post(
        _urlAnimalsInventory,
        data: animalModel.toTextPlain(
          companyId: companyId,
          userId: userId,
        ),
      );
      return unit;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Unit> updateAnimal({
    AnimalModel animalModel,
    String companyId,
    String userId,
  }) async {
    try {
      final response = await dioClient.put(
        "$_urlAnimalsInventory/${animalModel.id}",
        data: animalModel.toTextPlain(
          companyId: companyId,
          userId: userId,
        ),
      );
      return unit;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Unit> createAnimalParturition({
    int productId,
    Parturition parturition,
  }) async {
    try {
      final response = await dioClient.post(
        _urlAnimalParturition,
        data: parturition.toTextPlain(productId: productId),
      );
      return unit;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Unit> createAnimalVaccine({int productId, Vaccine vaccine}) async {
    try {
      final response = await dioClient.post(
        _urlAnimalVaccines,
        data: vaccine.toTextPlain(productId: productId),
      );
      return unit;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Parturition>> getAnimalParturition({int productId}) async {
    try {
      final response = await dioClient.get(
        _urlAnimalParturition,
        queryParameters: {
          "include_fields": "['name', 'id' ,'fecha_registro', 'nro_parto']",
          "filters": "[('product_template_id.id', '=', '$productId')]",
        },
      );

      if (response["count"] > 0) {
        return List<Parturition>.from(
          response["results"].map((x) => Parturition.fromJson(x)),
        );
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Vaccine>> getAnimalVaccines({int productId}) async {
    try {
      final response = await dioClient.get(
        _urlAnimalVaccines,
        queryParameters: {
          "include_fields": "['name', 'id' ,'fecha_registro']",
          "filters": "[('product_template_id.id', '=', '$productId')]",
        },
      );

      if (response["count"] > 0) {
        return List<Vaccine>.from(
          response["results"].map((x) => Vaccine.fromJson(x)),
        );
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Unit> deleteAnimalParturition({int parturitionId}) async {
    try {
      await dioClient.delete("$_urlAnimalParturition/$parturitionId");
      return unit;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Unit> deleteAnimalVaccine({int vaccineId}) async {
    try {
      await dioClient.delete("$_urlAnimalVaccines/$vaccineId");
      return unit;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Unit> updateAnimalParturition({
    int productId,
    Parturition parturition,
  }) async {
    try {
      final response = await dioClient.put(
        "$_urlAnimalParturition/${parturition.id}",
        data: parturition.toTextPlain(
          productId: productId,
        ),
      );
      return unit;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Unit> updateAnimalVaccine({int productId, Vaccine vaccine}) async {
    try {
      final response = await dioClient.put(
        "$_urlAnimalVaccines/${vaccine.id}",
        data: vaccine.toTextPlain(
          productId: productId,
        ),
      );
      return unit;
    } catch (e) {
      rethrow;
    }
  }
}
