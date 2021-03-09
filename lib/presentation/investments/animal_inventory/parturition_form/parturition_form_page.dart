import 'package:agriterra/application/investments/animal_parturition/animal_parturition_bloc.dart';
import 'package:agriterra/config/injectable/injection.dart';
import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/domain/investments/entities/parturition.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/utils/message_helper.dart';
import 'package:agriterra/presentation/investments/animal_inventory/parturition_form/parturition_form_scaffold.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ParturitionFormPage extends StatelessWidget {
  final int productId;
  final Parturition editedParturition;

  ParturitionFormPage({this.productId, this.editedParturition});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AnimalParturitionBloc>()
        ..add(
          AnimalParturitionEvent.initialized(optionOf(editedParturition)),
        ),
      child: BlocListener<AnimalParturitionBloc, AnimalParturitionState>(
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
        },
        child: ParturitionFormScaffold(
          productId: productId,
        ),
      ),
    );
  }
}
