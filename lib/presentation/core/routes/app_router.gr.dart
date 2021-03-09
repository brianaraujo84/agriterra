// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../../domain/investments/entities/animal.dart';
import '../../../domain/investments/entities/parturition.dart';
import '../../../domain/investments/entities/vaccine.dart';
import '../../auth/login/login_page.dart';
import '../../auth/regain_password/regain_password_page.dart';
import '../../home/home_page.dart';
import '../../investments/animal_inventory/animal_form/animal_form_page.dart';
import '../../investments/animal_inventory/animal_healthy_data/animal_healthy_data_page.dart';
import '../../investments/animal_inventory/animal_investments_page.dart';
import '../../investments/animal_inventory/parturition_form/parturition_form_page.dart';
import '../../investments/animal_inventory/vaccine_form/vaccine_form_page.dart';
import '../../investments/investments_home_page.dart';
import '../../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String loginPage = '/login-page';
  static const String regainPasswordPage = '/regain-password-page';
  static const String homePage = '/home-page';
  static const String investmentsHomePage = '/investments-home-page';
  static const String animalInvestmentsPage = '/animal-investments-page';
  static const String animalFormPage = '/animal-form-page';
  static const String animalHealthyDataPage = '/animal-healthy-data-page';
  static const String vaccineFormPage = '/vaccine-form-page';
  static const String parturitionFormPage = '/parturition-form-page';
  static const all = <String>{
    splashPage,
    loginPage,
    regainPasswordPage,
    homePage,
    investmentsHomePage,
    animalInvestmentsPage,
    animalFormPage,
    animalHealthyDataPage,
    vaccineFormPage,
    parturitionFormPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.regainPasswordPage, page: RegainPasswordPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.investmentsHomePage, page: InvestmentsHomePage),
    RouteDef(Routes.animalInvestmentsPage, page: AnimalInvestmentsPage),
    RouteDef(Routes.animalFormPage, page: AnimalFormPage),
    RouteDef(Routes.animalHealthyDataPage, page: AnimalHealthyDataPage),
    RouteDef(Routes.vaccineFormPage, page: VaccineFormPage),
    RouteDef(Routes.parturitionFormPage, page: ParturitionFormPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    RegainPasswordPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RegainPasswordPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    InvestmentsHomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => InvestmentsHomePage(),
        settings: data,
      );
    },
    AnimalInvestmentsPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AnimalInvestmentsPage(),
        settings: data,
      );
    },
    AnimalFormPage: (data) {
      final args = data.getArgs<AnimalFormPageArguments>(
        orElse: () => AnimalFormPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AnimalFormPage(editedAnimal: args.editedAnimal),
        settings: data,
      );
    },
    AnimalHealthyDataPage: (data) {
      final args = data.getArgs<AnimalHealthyDataPageArguments>(
        orElse: () => AnimalHealthyDataPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AnimalHealthyDataPage(animal: args.animal),
        settings: data,
      );
    },
    VaccineFormPage: (data) {
      final args = data.getArgs<VaccineFormPageArguments>(
        orElse: () => VaccineFormPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => VaccineFormPage(
          editedVaccine: args.editedVaccine,
          productId: args.productId,
        ),
        settings: data,
      );
    },
    ParturitionFormPage: (data) {
      final args = data.getArgs<ParturitionFormPageArguments>(
        orElse: () => ParturitionFormPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ParturitionFormPage(
          productId: args.productId,
          editedParturition: args.editedParturition,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// AnimalFormPage arguments holder class
class AnimalFormPageArguments {
  final Animal editedAnimal;
  AnimalFormPageArguments({this.editedAnimal});
}

/// AnimalHealthyDataPage arguments holder class
class AnimalHealthyDataPageArguments {
  final Animal animal;
  AnimalHealthyDataPageArguments({this.animal});
}

/// VaccineFormPage arguments holder class
class VaccineFormPageArguments {
  final Vaccine editedVaccine;
  final int productId;
  VaccineFormPageArguments({this.editedVaccine, this.productId});
}

/// ParturitionFormPage arguments holder class
class ParturitionFormPageArguments {
  final int productId;
  final Parturition editedParturition;
  ParturitionFormPageArguments({this.productId, this.editedParturition});
}
