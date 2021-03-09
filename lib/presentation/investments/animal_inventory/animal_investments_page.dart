import 'package:agriterra/config/injectable/injection.dart';
import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:agriterra/presentation/core/utils/message_helper.dart';
import 'package:agriterra/presentation/investments/animal_inventory/widgets/animal_card.dart';

import '../../../application/investments/animal_inventory/animal_inventory_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimalInvestmentsPage extends StatefulWidget {
  @override
  _AnimalInvestmentsPageState createState() => _AnimalInvestmentsPageState();
}

class _AnimalInvestmentsPageState extends State<AnimalInvestmentsPage> {
  final _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AnimalInventoryBloc>(
      create: (context) => getIt<AnimalInventoryBloc>()
        ..add(
          AnimalInventoryEvent.loadAnimals(),
        ),
      child: BlocConsumer<AnimalInventoryBloc, AnimalInventoryState>(
        listener: (context, state) {
          state.getAnimalsFailureOrSuccessOption.fold(
            () => null,
            (a) => a.fold(
              (l) {
                MessageHelper.createError(
                  message: NetworkExceptions.getErrorMessage(l),
                ).show(context);
              },
              (_) {},
            ),
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(AppConstants.of(context).inventoryAnimalsTitle),
              backgroundColor: investmentsFinishColor,
            ),
            body: Column(
              children: [
                if (state.isLoading) ...[
                  LinearProgressIndicator(
                    backgroundColor: investmentsFinishColor,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      investmentsStartColor,
                    ),
                  )
                ],
                Padding(
                  padding: EdgeInsets.all(UIHelper.spaceMedium),
                  child: Container(
                    height: 50,
                    child: TextField(
                      maxLines: 1,
                      controller: _searchTextController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide(
                            color: primaryColor,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black38,
                        ),
                        suffixIcon: state.isSearching
                            ? IconButton(
                                onPressed: () {
                                  context.read<AnimalInventoryBloc>().add(
                                        AnimalInventoryEvent.stopSearching(),
                                      );

                                  _closeKeyboard(context);
                                },
                                icon: Icon(
                                  Icons.cancel_outlined,
                                ),
                              )
                            : Icon(
                                Icons.filter_list,
                                color: Colors.black38,
                              ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                      ),
                      onChanged: (value) {
                        context.read<AnimalInventoryBloc>().add(
                              AnimalInventoryEvent.search(
                                searchValue: value,
                              ),
                            );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(UIHelper.spaceMedium),
                    itemCount: state.animals.length,
                    itemBuilder: (context, index) {
                      final animal = state.animals[index];
                      return InkWell(
                        onTap: () async {
                          await ExtendedNavigator.of(context).push(
                            Routes.animalFormPage,
                            arguments: AnimalFormPageArguments(
                              editedAnimal: animal,
                            ),
                          );

                          _reloadAnimals(context);
                        },
                        child: AnimalCard(
                          animal: animal,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: investmentsFinishColor,
              onPressed: () async {
                await ExtendedNavigator.of(context).push(
                  Routes.animalFormPage,
                  arguments: AnimalFormPageArguments(
                    editedAnimal: null,
                  ),
                );

                _reloadAnimals(context);
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }

  _reloadAnimals(BuildContext context) {
    context.read<AnimalInventoryBloc>().add(
          AnimalInventoryEvent.loadAnimals(),
        );
  }

  void _closeKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }
}
