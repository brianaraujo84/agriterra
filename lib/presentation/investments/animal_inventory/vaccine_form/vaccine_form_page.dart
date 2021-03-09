import 'package:agriterra/application/investments/animal_vaccines/animal_vaccines_bloc.dart';
import 'package:agriterra/config/injectable/injection.dart';
import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/domain/investments/entities/vaccine.dart';
import 'package:agriterra/presentation/core/utils/message_helper.dart';
import 'package:agriterra/presentation/investments/animal_inventory/vaccine_form/vaccine_form_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VaccineFormPage extends StatelessWidget {
  final int productId;
  final Vaccine editedVaccine;

  VaccineFormPage({this.editedVaccine, this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AnimalVaccinesBloc>()
        ..add(
          AnimalVaccinesEvent.initialized(optionOf(editedVaccine)),
        ),
      child: BlocListener<AnimalVaccinesBloc, AnimalVaccinesState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (l) {
                  MessageHelper.createError(
                    message: NetworkExceptions.getErrorMessage(l),
                  ).show(context);
                },
                (r) {
                  ExtendedNavigator.of(context).pop();
                },
              );
            },
          );
        },
        child: VaccineFormScaffold(
          productId: productId,
        ),
      ),
    );
  }
}
