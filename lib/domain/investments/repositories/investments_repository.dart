import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/domain/investments/entities/animal.dart';
import 'package:agriterra/domain/investments/entities/general_object.dart';
import 'package:agriterra/domain/investments/entities/parturition.dart';
import 'package:agriterra/domain/investments/entities/vaccine.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class InvestmentsRepository {
  Future<Either<NetworkExceptions, List<Animal>>> getAnimalInventoryByCompany();

  Future<Either<NetworkExceptions, Animal>> createAnimal({
    @required Animal animal,
  });

  Future<Either<NetworkExceptions, Animal>> updateAnimal({
    @required Animal animal,
  });

  Future<Either<NetworkExceptions, Unit>> deleteAnimal({
    @required int animalId,
  });

  Future<Either<NetworkExceptions, List<GeneralObject>>> getAnimalCategories();

  Future<Either<NetworkExceptions, List<Vaccine>>> getAnimalVaccines({
    int productId,
  });

  Future<Either<NetworkExceptions, List<Parturition>>> getAnimalParturition({
    int productId,
  });

  Future<Either<NetworkExceptions, Vaccine>> createAnimalVaccine({
    @required int productId,
    @required Vaccine vaccine,
  });

  Future<Either<NetworkExceptions, Vaccine>> updateAnimalVaccine({
    @required int productId,
    @required Vaccine vaccine,
  });

  Future<Either<NetworkExceptions, Parturition>> createAnimalParturition({
    @required int productId,
    @required Parturition parturition,
  });

  Future<Either<NetworkExceptions, Parturition>> updateAnimalParturition({
    @required int productId,
    @required Parturition parturition,
  });

  Future<Either<NetworkExceptions, Unit>> deleteAnimalVaccine({
    @required int vaccineId,
  });

  Future<Either<NetworkExceptions, Unit>> deleteAnimalParturition({
    @required int parturitionId,
  });
}
