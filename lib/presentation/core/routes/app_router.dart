import 'package:agriterra/presentation/auth/login/login_page.dart';
import 'package:agriterra/presentation/auth/regain_password/regain_password_page.dart';
import 'package:agriterra/presentation/home/home_page.dart';
import 'package:agriterra/presentation/investments/animal_inventory/animal_form/animal_form_page.dart';
import 'package:agriterra/presentation/investments/animal_inventory/animal_healthy_data/animal_healthy_data_page.dart';
import 'package:agriterra/presentation/investments/animal_inventory/animal_investments_page.dart';
import 'package:agriterra/presentation/investments/animal_inventory/parturition_form/parturition_form_page.dart';
import 'package:agriterra/presentation/investments/animal_inventory/vaccine_form/vaccine_form_page.dart';
import 'package:agriterra/presentation/investments/investments_home_page.dart';
import 'package:agriterra/presentation/splash/splash_page.dart';
import 'package:auto_route/auto_route_annotations.dart';

export 'package:auto_route/auto_route.dart';

export 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: SplashPage, initial: true),
    AdaptiveRoute(page: LoginPage),
    AdaptiveRoute(page: RegainPasswordPage),
    AdaptiveRoute(page: HomePage),
    AdaptiveRoute(page: InvestmentsHomePage),
    AdaptiveRoute(page: AnimalInvestmentsPage),
    AdaptiveRoute(page: AnimalFormPage),
    AdaptiveRoute(page: AnimalHealthyDataPage),
    AdaptiveRoute(page: VaccineFormPage),
    AdaptiveRoute(page: ParturitionFormPage),
  ],
)
class $AppRouter {}
