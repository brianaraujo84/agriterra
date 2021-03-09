import 'package:agriterra/application/investments/animal_inventory/animal_inventory_bloc.dart';
import 'package:agriterra/domain/investments/entities/animal.dart';
import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:agriterra/presentation/core/utils/parse_date_util.dart';
import 'package:agriterra/presentation/core/widgets/custom_drop_down_widget.dart';
import 'package:agriterra/presentation/core/widgets/custom_input.dart';
import 'package:agriterra/presentation/core/widgets/loading_modal_widget.dart';
import 'package:agriterra/presentation/core/widgets/primary_button_widget.dart';
import 'package:agriterra/presentation/core/widgets/secondary_button_widget.dart';
import 'package:agriterra/presentation/investments/animal_inventory/widgets/cow_avatar_widget.dart';
import 'package:agriterra/presentation/investments/animal_inventory/widgets/page_book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimalFormScaffold extends StatefulWidget {
  @override
  _AnimalFormScaffoldState createState() => _AnimalFormScaffoldState();
}

class _AnimalFormScaffoldState extends State<AnimalFormScaffold> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Animal animal = Animal.empty();
  DateTime registrationDate = DateTime.now();
  final registrationDateController = TextEditingController();
  final nameAnimalController = TextEditingController();
  final defaultCodeController = TextEditingController();
  final priceController = TextEditingController();
  final descriptionController = TextEditingController();
  final ageInMonthsController = TextEditingController();
  final milkDailyProductionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    registrationDateController.text = getDate(registrationDate);
  }

  @override
  Widget build(BuildContext context) {
    final _constants = AppConstants.of(context);

    return BlocConsumer<AnimalInventoryBloc, AnimalInventoryState>(
      listenWhen: (p, c) =>
          p.isViewing != c.isViewing || p.isEditing != c.isEditing,
      listener: (context, state) {
        if ((state.isViewing || state.isEditing) && animal.id == 0) {
          registrationDateController.text = getDate(state.animal.fechaRegistro);
          nameAnimalController.text = state.animal.nombreAnimal;
          defaultCodeController.text = state.animal.defaultCode;
          priceController.text = state.animal.listPrice.toString();
          descriptionController.text = state.animal.description;
          ageInMonthsController.text = state.animal.edadMeses.toString();
          milkDailyProductionController.text =
              state.animal.produccionLeche.toString();
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: investmentsFinishColor,
            title: Text(
              state.isViewing
                  ? _constants.detail
                  : state.isEditing
                      ? _constants.update
                      : _constants.newRegistration,
            ),
            actions: [
              if (state.animal.id != 0 && state.isViewing) ...[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    context.read<AnimalInventoryBloc>().add(
                          AnimalInventoryEvent.startEditing(),
                        );
                  },
                ),
              ],
              if (state.animal.id != 0 && state.isEditing) ...[
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () async {
                    final res = await _showDialogConfirmation(
                      context: context,
                      subTitle: _constants.deleteConfirmation,
                    );

                    if (res) {
                      context.read<AnimalInventoryBloc>().add(
                            AnimalInventoryEvent.delete(
                              animalId: state.animal.id,
                            ),
                          );
                    }
                  },
                ),
              ]
            ],
          ),
          body: state.isViewing
              ? _buildViewDetailMode(
                  animal: state.animal,
                  constants: _constants,
                )
              : _buildEditMode(state: state, constants: _constants),
        );
      },
    );
  }

  Widget _buildViewDetailMode({Animal animal, AppConstants constants}) {
    final registration = animal.fechaRegistro != null
        ? ParseDate().getDate(date: animal.fechaRegistro)
        : "";
    final _textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: UIHelper.spaceLarge,
          horizontal: UIHelper.spaceSmall,
        ),
        child: Stack(
          children: [
            PageBook(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                        text: "${constants.registrationDate}: ",
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                              color: blueOilColor,
                              fontWeight: FontWeight.bold,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text: registration,
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  UIHelper.verticalSpace(UIHelper.spaceMedium * 3),
                  CowAvatar(),
                  UIHelper.verticalSpaceMedium(),
                  Text(
                    animal.name,
                    style: _textTheme.headline5.copyWith(
                      fontWeight: FontWeight.bold,
                      color: investmentsFinishColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  UIHelper.verticalSpaceLarge(),
                  Row(
                    children: [
                      _customItem(
                        pathImage: "assets/images/edad_icon.png",
                        title: constants.ageMonths,
                        subtitle: animal.edadMeses.toString() +
                            " " +
                            constants.months,
                        textTheme: _textTheme,
                      ),
                      _customItem(
                        pathImage: "assets/images/preciounit_icon.png",
                        title: constants.price,
                        subtitle: animal.listPrice.toString() + " Bs",
                        textTheme: _textTheme,
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(UIHelper.spaceMedium * 3),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _customItem(
                        pathImage: "assets/images/estado_icon.png",
                        title: constants.animalState,
                        subtitle: animal.estadoAnimalId.name,
                        textTheme: _textTheme,
                      ),
                      _customItem(
                        pathImage: "assets/images/producciondiaria_icon.png",
                        title: constants.milkDailyProduction,
                        subtitle: animal.produccionLeche != 0
                            ? "${animal.produccionLeche} Litros"
                            : "-",
                        textTheme: _textTheme,
                      ),
                    ],
                  ),
                  UIHelper.verticalSpaceLarge(),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(
                        UIHelper.spaceMedium,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(UIHelper.spaceLarge),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${constants.notes}:",
                            style: _textTheme.subtitle1.copyWith(
                              color: investmentsFinishColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            animal.description,
                            style: _textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  UIHelper.verticalSpace(40),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 200,
                      child: PrimaryButton(
                        color: blueOilColor,
                        textButton: constants.healthyData,
                        isValid: true,
                        onPressed: () {
                          ExtendedNavigator.of(context)
                              .push(Routes.animalHealthyDataPage,
                                  arguments: AnimalHealthyDataPageArguments(
                                    animal: animal,
                                  ));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEditMode({
    AnimalInventoryState state,
    AppConstants constants,
  }) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: UIHelper.spaceMedium,
                vertical: UIHelper.spaceLarge,
              ),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: InkWell(
                      onTap: state.isEditing || state.isCreating
                          ? () {
                              _selectDate(context);
                            }
                          : null,
                      child: CustomInput(
                        disabled: true,
                        label: constants.registrationDate,
                        controller: registrationDateController,
                        maxLength: 100,
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: Colors.grey,
                        ),
                        onSaved: (value) =>
                            animal.fechaRegistro = registrationDate,
                        validator: animal.validateRequired,
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),
                  CustomInput(
                    label: constants.animalName,
                    controller: nameAnimalController,
                    maxLength: 100,
                    onSaved: (value) => animal.nombreAnimal = value,
                    validator: (value) => animal.validateTwoFields(
                      value,
                      defaultCodeController.text,
                    ),
                    disabled: !state.isEditing && !state.isCreating,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  CustomInput(
                    label: constants.animalDefaultCode,
                    controller: defaultCodeController,
                    maxLength: 100,
                    onSaved: (value) => animal.defaultCode = value,
                    validator: (value) => animal.validateTwoFields(
                      nameAnimalController.text,
                      value,
                    ),
                    disabled: !state.isEditing && !state.isCreating,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  CustomInput(
                    label: constants.price,
                    controller: priceController,
                    maxLength: 9,
                    onSaved: (value) => animal.listPrice = double.parse(value),
                    isNumber: true,
                    isDecimal: true,
                    validator: animal.validateRequired,
                    disabled: !state.isEditing && !state.isCreating,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  CustomInput(
                    label: constants.ageMonths,
                    controller: ageInMonthsController,
                    maxLength: 9,
                    onSaved: (value) => animal.edadMeses = int.parse(value),
                    isNumber: true,
                    validator: animal.validateRequired,
                    disabled: !state.isEditing && !state.isCreating,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  CustomInput(
                    label: constants.milkDailyProduction,
                    controller: milkDailyProductionController,
                    maxLength: 9,
                    onSaved: (value) => value != null && value.isNotEmpty
                        ? animal.produccionLeche = int.parse(
                            value,
                          )
                        : animal.produccionLeche = null,
                    isNumber: true,
                    disabled: !state.isEditing && !state.isCreating,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  IgnorePointer(
                    ignoring: !state.isEditing && !state.isCreating,
                    child: CustomDropDown(
                      title: constants.animalState,
                      onChanged: (value) {
                        context.read<AnimalInventoryBloc>().add(
                              AnimalInventoryEvent.onChangeAnimalState(
                                type: value,
                              ),
                            );
                      },
                      items: state.animalStates,
                      value: state.animal.estadoAnimalId.id == 0
                          ? null
                          : state.animal.estadoAnimalId,
                      validator: animal.validateDynamic,
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),
                  CustomInput(
                    label: constants.notes,
                    controller: descriptionController,
                    maxLength: 400,
                    onSaved: (value) => animal.description = value,
                    disabled: !state.isEditing && !state.isCreating,
                  ),
                  UIHelper.verticalSpaceLarge(),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SecondaryButton(
                          onPressed: () {
                            ExtendedNavigator.of(context).pop();
                          },
                          isValid: true,
                          textButton: state.isEditing
                              ? constants.cancelBtn
                              : constants.back,
                        ),
                      ),
                      if (state.isEditing || state.isCreating) ...[
                        UIHelper.horizontalSpaceMedium(),
                        Expanded(
                          flex: 1,
                          child: PrimaryButton(
                            color: investmentsFinishColor,
                            onPressed: () async {
                              _closeKeyboard(context);
                              if (!formKey.currentState.validate()) {
                                return;
                              }

                              final res = await _showDialogConfirmation(
                                context: context,
                                subTitle: state.isEditing
                                    ? constants.updateConfirmation
                                    : constants.registerConfirmation,
                              );

                              if (res) {
                                _submit(
                                  context: context,
                                );
                              }
                            },
                            isValid: true,
                            textButton: state.isEditing
                                ? constants.updateBtn
                                : constants.registerBtn,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        if (state.isSaving || state.isDeleting) ...[LoadingModal()]
      ],
    );
  }

  Widget _customItem({
    String pathImage,
    String title,
    String subtitle,
    TextTheme textTheme,
  }) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          children: [
            Container(
              width: 55,
              height: 55,
              child: Image.asset(pathImage),
            ),
            UIHelper.verticalSpaceMedium(),
            Text(
              "$title:",
              style: textTheme.subtitle1.copyWith(
                color: investmentsFinishColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            UIHelper.verticalSpaceSmall(),
            Text(
              subtitle,
              style: textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void _submit({BuildContext context}) async {
    if (!formKey.currentState.validate()) {
      return;
    }
    formKey.currentState.save();

    context.read<AnimalInventoryBloc>().add(
          AnimalInventoryEvent.save(
            animal: animal,
          ),
        );
  }

  void _closeKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  void _selectDate(BuildContext context) async {
    final DateTime datePicked = await showDatePicker(
      context: context,
      initialDate: registrationDate,
      // The firstDate and the lastDate will have a difference of 5 years from the current date.
      firstDate: DateTime(registrationDate.year - 5),
      lastDate: DateTime(registrationDate.year + 5),
    );
    if (datePicked != null && datePicked != registrationDate) {
      registrationDate = datePicked;
      registrationDateController.text = getDate(datePicked);
    }
  }

  String getDate(DateTime dateTime) {
    if (dateTime != null) {
      return "${dateTime.day.toString().padLeft(2, '0')}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.year.toString().padLeft(4, '0')}";
    } else {
      return "";
    }
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

  @override
  void dispose() {
    registrationDateController?.dispose();
    nameAnimalController?.dispose();
    defaultCodeController?.dispose();
    priceController?.dispose();
    ageInMonthsController?.dispose();
    milkDailyProductionController?.dispose();
    descriptionController?.dispose();
    super.dispose();
  }
}
