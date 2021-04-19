import 'package:agriterra/application/expenses/production_expenses/production_expenses_bloc.dart';
import 'package:agriterra/config/injectable/injection.dart';
import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/domain/expenses/entities/animal_p_e.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/utils/message_helper.dart';
import 'package:agriterra/presentation/expenses/production_expenses/animal_form/animal_form_production_expenses_scaffold.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimalFormProductionExpensesPage extends StatelessWidget{
  final AnimalPE editedAnimal_p_e;


  AnimalFormProductionExpensesPage({this.editedAnimal_p_e});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<ProductionExpensesBloc>()
            ..add(
              ProductionExpensesEvent.initialized(optionOf(editedAnimal_p_e)),
            ),
      child: BlocListener<ProductionExpensesBloc, ProductionExpensesState>(
          listenWhen: (p,c)=>
              p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption ||
              p.deleteFailureOrSuccessOption != c.deleteFailureOrSuccessOption,
          listener: (context, state){
            state.saveFailureOrSuccessOption.fold(
           (){},
            (either){
              either.fold(
                 (l){
                  MessageHelper.createError(
                      message: NetworkExceptions.getErrorMessage(l),
                  ).show(context);
                 },
                    (r){
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
        child: AnimalFormProductionExpensesScaffold(),
      ),
    );
  }
}