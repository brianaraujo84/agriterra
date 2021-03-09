import 'package:agriterra/application/investments/animal_vaccines/animal_vaccines_bloc.dart';
import 'package:agriterra/domain/investments/entities/vaccine.dart';
import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:agriterra/presentation/core/widgets/custom_input.dart';
import 'package:agriterra/presentation/core/widgets/loading_modal_widget.dart';
import 'package:agriterra/presentation/core/widgets/primary_button_widget.dart';
import 'package:agriterra/presentation/core/widgets/secondary_button_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VaccineFormScaffold extends StatefulWidget {
  final int productId;

  VaccineFormScaffold({@required this.productId});

  @override
  _VaccineFormScaffoldState createState() => _VaccineFormScaffoldState();
}

class _VaccineFormScaffoldState extends State<VaccineFormScaffold> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Vaccine vaccine = Vaccine.empty();
  DateTime registrationDate = DateTime.now();
  final registrationDateController = TextEditingController();
  final nameAnimalController = TextEditingController();

  @override
  void initState() {
    super.initState();
    registrationDateController.text = getDate(registrationDate);
  }

  @override
  Widget build(BuildContext context) {
    final _constants = AppConstants.of(context);

    return BlocConsumer<AnimalVaccinesBloc, AnimalVaccinesState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        registrationDateController.text = getDate(state.vaccine.fechaRegistro);
        nameAnimalController.text = state.vaccine.name;
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: investmentsFinishColor,
            title: Text(
              state.isEditing ? _constants.update : _constants.newRegistration,
            ),
          ),
          body: Stack(
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
                            onTap: () {
                              _selectDate(context);
                            },
                            child: CustomInput(
                              disabled: true,
                              label: _constants.registrationDate,
                              controller: registrationDateController,
                              maxLength: 100,
                              suffixIcon: Icon(
                                Icons.calendar_today,
                                color: Colors.grey,
                              ),
                              onSaved: (value) =>
                                  vaccine.fechaRegistro = registrationDate,
                              validator: vaccine.validateRequired,
                            ),
                          ),
                        ),
                        UIHelper.verticalSpaceMedium(),
                        CustomInput(
                          label: _constants.name,
                          controller: nameAnimalController,
                          maxLength: 100,
                          onSaved: (value) => vaccine.name = value,
                          validator: vaccine.validateRequired,
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
                                    ? _constants.cancelBtn
                                    : _constants.back,
                              ),
                            ),
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
                                        ? _constants.updateConfirmation
                                        : _constants.registerConfirmation,
                                  );

                                  if (res) {
                                    _submit(
                                      context: context,
                                    );
                                  }
                                },
                                isValid: true,
                                textButton: state.isEditing
                                    ? _constants.updateBtn
                                    : _constants.registerBtn,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (state.isSaving) ...[LoadingModal()]
            ],
          ),
        );
      },
    );
  }

  void _submit({BuildContext context}) async {
    if (!formKey.currentState.validate()) {
      return;
    }
    formKey.currentState.save();

    context.read<AnimalVaccinesBloc>().add(
          AnimalVaccinesEvent.save(
            productTemplateId: widget.productId,
            vaccine: vaccine,
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
    return "${dateTime.day.toString().padLeft(2, '0')}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.year.toString().padLeft(4, '0')}";
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
    super.dispose();
  }
}
