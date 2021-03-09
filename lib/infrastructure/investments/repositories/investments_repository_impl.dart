import 'package:agriterra/domain/investments/entities/animal.dart';
import 'package:agriterra/domain/investments/entities/general_object.dart';
import 'package:agriterra/domain/investments/entities/parturition.dart';
import 'package:agriterra/domain/investments/entities/vaccine.dart';
import 'package:agriterra/infrastructure/investments/models/animal_model.dart';
import '../../../domain/investments/repositories/investments_repository.dart';
import '../../auth/datasources/auth_local_data_source.dart';
import '../datasources/investments_remote_data_source.dart';
import '../../../domain/core/network_exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@LazySingleton(as: InvestmentsRepository)
class InvestmentsRepositoryImpl implements InvestmentsRepository {
  final AuthLocalDataSource localDataSource;
  final InvestmentsRemoteDataSource remoteDataSource;

  InvestmentsRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
  });

  @override
  Future<Either<NetworkExceptions, Animal>> createAnimal({
    Animal animal,
  }) async {
    try {
      final animalModel = AnimalModel.fromDomain(animal);
      final companyId = await localDataSource.getCompanyId();
      final userId = await localDataSource.getUserId();
      final response = await remoteDataSource.createAnimal(
        companyId: companyId,
        userId: userId,
        animalModel: animalModel,
      );

      return Right(animal);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, Unit>> deleteAnimal({int animalId}) async {
    try {
      await remoteDataSource.deleteAnimal(animalId: animalId);
      return Right(unit);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, List<GeneralObject>>>
      getAnimalCategories() async {
    try {
      final response = await remoteDataSource.getAnimalStates();
      return Right(response);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, List<Animal>>>
      getAnimalInventoryByCompany() async {
    try {
      final companyId = await localDataSource.getCompanyId();
      final response = await remoteDataSource.getAnimalInventoryByCompany(
        companyId: companyId,
      );
      final listResponse = response.map((object) => object.toDomain()).toList();
      return Right(listResponse);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, Animal>> updateAnimal({
    Animal animal,
  }) async {
    try {
      final animalModel = AnimalModel.fromDomain(animal);
      final companyId = await localDataSource.getCompanyId();
      final userId = await localDataSource.getUserId();
      final response = await remoteDataSource.updateAnimal(
        companyId: companyId,
        userId: userId,
        animalModel: animalModel,
      );

      return Right(animal);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, Parturition>> createAnimalParturition({
    int productId,
    Parturition parturition,
  }) async {
    try {
      final response = await remoteDataSource.createAnimalParturition(
        productId: productId,
        parturition: parturition,
      );

      return Right(parturition);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, Vaccine>> createAnimalVaccine({
    int productId,
    Vaccine vaccine,
  }) async {
    try {
      final response = await remoteDataSource.createAnimalVaccine(
        productId: productId,
        vaccine: vaccine,
      );

      return Right(vaccine);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, List<Parturition>>> getAnimalParturition({
    int productId,
  }) async {
    try {
      final response = await remoteDataSource.getAnimalParturition(
        productId: productId,
      );
      return Right(response);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, List<Vaccine>>> getAnimalVaccines({
    int productId,
  }) async {
    try {
      final response = await remoteDataSource.getAnimalVaccines(
        productId: productId,
      );
      return Right(response);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, Unit>> deleteAnimalParturition({
    int parturitionId,
  }) async {
    try {
      await remoteDataSource.deleteAnimalParturition(
        parturitionId: parturitionId,
      );
      return Right(unit);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, Unit>> deleteAnimalVaccine({
    int vaccineId,
  }) async {
    try {
      await remoteDataSource.deleteAnimalVaccine(vaccineId: vaccineId);
      return Right(unit);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, Parturition>> updateAnimalParturition({
    int productId,
    Parturition parturition,
  }) async {
    try {
      final response = await remoteDataSource.updateAnimalParturition(
        productId: productId,
        parturition: parturition,
      );

      return Right(parturition);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, Vaccine>> updateAnimalVaccine({
    int productId,
    Vaccine vaccine,
  }) async {
    try {
      final response = await remoteDataSource.updateAnimalVaccine(
        productId: productId,
        vaccine: vaccine,
      );

      return Right(vaccine);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }
}
