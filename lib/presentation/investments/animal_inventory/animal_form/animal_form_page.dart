import 'package:agriterra/application/investments/animal_inventory/animal_inventory_bloc.dart';
import 'package:agriterra/config/injectable/injection.dart';
import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/domain/investments/entities/animal.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/utils/message_helper.dart';
import 'package:agriterra/presentation/investments/animal_inventory/animal_form/animal_form_scaffold.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimalFormPage extends StatelessWidget {
  final Animal editedAnimal;

  AnimalFormPage({this.editedAnimal});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AnimalInventoryBloc>()
        ..add(
          AnimalInventoryEvent.initialized(optionOf(editedAnimal)),
        ),
      child: BlocListener<AnimalInventoryBloc, AnimalInventoryState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption ||
            p.deleteFailureOrSuccessOption != c.deleteFailureOrSuccessOption,
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

          state.deleteFailureOrSuccessOption.fold(
            () => null,
            (a) => a.fold(
              (l) {
                MessageHelper.createError(
                        message: NetworkExceptions.getErrorMessage(l))
                    .show(context);
              },
              (r) {
                ExtendedNavigator.of(context).pop();
              },
            ),
          );
        },
        child: AnimalFormScaffold(),
      ),
    );
  }
}
