import 'package:agriterra/application/investments/animal_parturition/animal_parturition_bloc.dart';
import 'package:agriterra/application/investments/animal_vaccines/animal_vaccines_bloc.dart';
import 'package:agriterra/config/injectable/injection.dart';
import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/domain/investments/entities/animal.dart';
import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:agriterra/presentation/core/utils/message_helper.dart';
import 'package:agriterra/presentation/core/utils/parse_date_util.dart';
import 'package:agriterra/presentation/core/widgets/loading_modal_widget.dart';
import 'package:agriterra/presentation/investments/animal_inventory/animal_healthy_data/widgets/parturition_card.dart';
import 'package:agriterra/presentation/investments/animal_inventory/animal_healthy_data/widgets/vaccine_card.dart';
import 'package:agriterra/presentation/investments/animal_inventory/widgets/cow_avatar_widget.dart';
import 'package:agriterra/presentation/investments/animal_inventory/widgets/page_book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class AnimalHealthyDataPage extends StatelessWidget {
  final Animal animal;
  AppConstants _constants;
  TextTheme _textTheme;

  AnimalHealthyDataPage({this.animal});

  @override
  Widget build(BuildContext context) {
    _constants = AppConstants.of(context);
    _textTheme = Theme.of(context).textTheme;
    final registration = ParseDate().getDate(date: animal.fechaRegistro);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AnimalVaccinesBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AnimalParturitionBloc>(),
        ),
      ],
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: investmentsFinishColor,
              title: Text(_constants.healthyData),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: UIHelper.spaceLarge,
                  horizontal: UIHelper.spaceSmall,
                ),
                child: PageBook(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: RichText(
                            text: TextSpan(
                              text: "${_constants.registrationDate}: ",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  .copyWith(
                                    color: blueOilColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: registration,
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      UIHelper.verticalSpace(UIHelper.spaceMedium),
                      Row(
                        children: [
                          CowAvatar(),
                          UIHelper.horizontalSpaceLarge(),
                          Text(
                            animal.name,
                            style: _textTheme.headline5.copyWith(
                              fontWeight: FontWeight.bold,
                              color: investmentsFinishColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      UIHelper.verticalSpaceLarge(),
                      buildParturitionSection(),
                      UIHelper.verticalSpaceLarge(),
                      buildVaccinesView(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          BlocBuilder<AnimalParturitionBloc, AnimalParturitionState>(
            builder: (context, state) {
              if (state.isProcessing) {
                return LoadingModal();
              } else {
                return SizedBox();
              }
            },
          ),
          BlocBuilder<AnimalVaccinesBloc, AnimalVaccinesState>(
            builder: (context, state) {
              if (state.isProcessing) {
                return LoadingModal();
              } else {
                return SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildParturitionSection() {
    return BlocConsumer<AnimalParturitionBloc, AnimalParturitionState>(
      listenWhen: (p, c) => p.isProcessing != c.isProcessing,
      listener: (context, state) {
        state.getParturitionFailureOrSuccessOption.fold(
          () => {},
          (a) => a.fold(
            (failure) {
              MessageHelper.createError(
                message: NetworkExceptions.getErrorMessage(
                  failure,
                ),
              ).show(context);
              ;
            },
            (r) => {},
          ),
        );

        state.deleteFailureOrSuccessOption.fold(
          () => {},
          (a) => a.fold(
            (failure) {
              MessageHelper.createError(
                message: NetworkExceptions.getErrorMessage(
                  failure,
                ),
              ).show(context);
              ;
            },
            (r) {
              MessageHelper.createSuccess(
                message: _constants.deletedSuccessfully,
              ).show(context);
              ;
              updateParturitionList(context: context);
            },
          ),
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            _dateItem(
              context: context,
              title: _constants.birthDates,
              onPressedExpandList: () {
                if (state.isExpanded) {
                  context.read<AnimalParturitionBloc>().add(
                        AnimalParturitionEvent.expandList(
                          expand: false,
                        ),
                      );
                } else {
                  if (state.parturitions.isNotEmpty) {
                    context.read<AnimalParturitionBloc>().add(
                          AnimalParturitionEvent.expandList(
                            expand: true,
                          ),
                        );
                  } else {
                    context.read<AnimalParturitionBloc>().add(
                          AnimalParturitionEvent.loadParturitions(
                            productId: animal.id,
                          ),
                        );
                  }
                }
              },
              onPressedAddNew: () async {
                await ExtendedNavigator.of(context).push(
                  Routes.parturitionFormPage,
                  arguments: ParturitionFormPageArguments(
                    productId: animal.id,
                    editedParturition: null,
                  ),
                );

                updateParturitionList(context: context);
              },
            ),
            UIHelper.verticalSpaceSmall(),
            state.isExpanded
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        UIHelper.spaceMedium,
                      ),
                    ),
                    child: state.parturitions.isEmpty
                        ? _emptyItem()
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: state.parturitions.length,
                            itemBuilder: (context, index) {
                              final parturition = state.parturitions[index];
                              return ParturitionCard(
                                parturition: parturition,
                                onDeletePressed: () async {
                                  final res = await _showDialogConfirmation(
                                    context: context,
                                    subTitle: _constants.deleteConfirmation,
                                  );

                                  if (res) {
                                    context.read<AnimalParturitionBloc>().add(
                                          AnimalParturitionEvent.delete(
                                            parturitionId: parturition.id,
                                          ),
                                        );
                                  }
                                },
                                onEditPressed: () async {
                                  await ExtendedNavigator.of(context).push(
                                    Routes.parturitionFormPage,
                                    arguments: ParturitionFormPageArguments(
                                      productId: animal.id,
                                      editedParturition: parturition,
                                    ),
                                  );

                                  updateParturitionList(context: context);
                                },
                              );
                            },
                          ),
                  )
                : SizedBox(),
          ],
        );
      },
    );
  }

  Widget buildVaccinesView() {
    return BlocConsumer<AnimalVaccinesBloc, AnimalVaccinesState>(
      listenWhen: (p, c) => p.isProcessing != c.isProcessing,
      listener: (context, state) {
        state.getVaccinesFailureOrSuccessOption.fold(
          () => {},
          (a) => a.fold(
            (failure) {
              MessageHelper.createError(
                message: NetworkExceptions.getErrorMessage(
                  failure,
                ),
              ).show(context);
            },
            (r) => {},
          ),
        );

        state.deleteFailureOrSuccessOption.fold(
          () => {},
          (a) => a.fold(
            (failure) {
              MessageHelper.createError(
                message: NetworkExceptions.getErrorMessage(
                  failure,
                ),
              ).show(context);
            },
            (r) {
              MessageHelper.createSuccess(
                message: _constants.deletedSuccessfully,
              ).show(context);

              updateVaccinesList(context: context);
            },
          ),
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            _dateItem(
              context: context,
              title: _constants.vaccineDates,
              onPressedExpandList: () {
                if (state.isExpanded) {
                  context.read<AnimalVaccinesBloc>().add(
                        AnimalVaccinesEvent.expandList(
                          expand: false,
                        ),
                      );
                } else {
                  if (state.vaccines.isNotEmpty) {
                    context.read<AnimalVaccinesBloc>().add(
                          AnimalVaccinesEvent.expandList(
                            expand: true,
                          ),
                        );
                  } else {
                    updateVaccinesList(context: context);
                  }
                }
              },
              onPressedAddNew: () async {
                await ExtendedNavigator.of(context).push(
                  Routes.vaccineFormPage,
                  arguments: VaccineFormPageArguments(
                    productId: animal.id,
                    editedVaccine: null,
                  ),
                );
                updateVaccinesList(context: context);
              },
            ),
            UIHelper.verticalSpaceSmall(),
            state.isExpanded
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        UIHelper.spaceMedium,
                      ),
                    ),
                    child: state.vaccines.isEmpty
                        ? _emptyItem()
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: state.vaccines.length,
                            itemBuilder: (context, index) {
                              final vaccine = state.vaccines[index];
                              return VaccineCard(
                                vaccine: vaccine,
                                onDeletePressed: () async {
                                  final res = await _showDialogConfirmation(
                                    context: context,
                                    subTitle: _constants.deleteConfirmation,
                                  );

                                  if (res) {
                                    context.read<AnimalVaccinesBloc>().add(
                                          AnimalVaccinesEvent.delete(
                                            vaccineId: vaccine.id,
                                          ),
                                        );
                                  }
                                },
                                onEditPressed: () async {
                                  await ExtendedNavigator.of(context).push(
                                    Routes.vaccineFormPage,
                                    arguments: VaccineFormPageArguments(
                                      productId: animal.id,
                                      editedVaccine: vaccine,
                                    ),
                                  );

                                  updateVaccinesList(context: context);
                                },
                              );
                            },
                          ),
                  )
                : SizedBox(),
          ],
        );
      },
    );
  }

  void updateParturitionList({@required BuildContext context}) {
    context.read<AnimalParturitionBloc>().add(
          AnimalParturitionEvent.loadParturitions(
            productId: animal.id,
          ),
        );
  }

  void updateVaccinesList({@required BuildContext context}) {
    context.read<AnimalVaccinesBloc>().add(
          AnimalVaccinesEvent.loadVaccines(productId: animal.id),
        );
  }

  Widget _emptyItem() {
    return Center(child: Text(_constants.emptyData));
  }

  Widget _dateItem({
    @required BuildContext context,
    @required String title,
    @required Function onPressedExpandList,
    @required Function onPressedAddNew,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: _textTheme.subtitle1.copyWith(
            color: investmentsFinishColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        UIHelper.verticalSpaceSmall(),
        Container(
          padding: EdgeInsets.all(UIHelper.spaceMedium),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(UIHelper.spaceMedium),
            color: Theme.of(context).cardColor,
          ),
          child: Row(
            children: [
              Text(
                getTodayDate(),
                style: _textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Text(
                  _constants.lastRegister,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              FloatingActionButton(
                heroTag: "expandListFab$title",
                onPressed: onPressedExpandList,
                child: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                backgroundColor: blueOilColor,
                elevation: 0,
                mini: true,
              ),
              FloatingActionButton(
                heroTag: "AddItemFab$title",
                onPressed: onPressedAddNew,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: blueOilColor,
                elevation: 0,
                mini: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<bool> _showDialogConfirmation({
    BuildContext context,
    String subTitle,
  }) {
    final _constants = AppConstants.of(context);
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(_constants.alert),
          content: Text(
            subTitle,
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => ExtendedNavigator.of(context).pop(false),
              child: Text(AppConstants.of(context).cancelBtn),
            ),
            FlatButton(
              onPressed: () => ExtendedNavigator.of(context).pop(true),
              child: Text(AppConstants.of(context).yesBtn),
            ),
          ],
        );
      },
    );
  }

  String getTodayDate() {
    final now = DateTime.now();
    return "${now.day}/${now.month}/${now.year} ";
  }
}
