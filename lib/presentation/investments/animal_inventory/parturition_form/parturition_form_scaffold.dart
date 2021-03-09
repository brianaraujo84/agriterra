import 'package:agriterra/application/investments/animal_parturition/animal_parturition_bloc.dart';
import 'package:agriterra/domain/investments/entities/parturition.dart';
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

class ParturitionFormScaffold extends StatefulWidget {
  final int productId;

  ParturitionFormScaffold({@required this.productId});

  @override
  _ParturitionFormScaffoldState createState() =>
      _ParturitionFormScaffoldState();
}

class _ParturitionFormScaffoldState extends State<ParturitionFormScaffold> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Parturition parturition = Parturition.empty();
  DateTime registrationDate = DateTime.now();
  final registrationDateController = TextEditingController();
  final nameAnimalController = TextEditingController();
  final nroParturitionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    registrationDateController.text = getDate(registrationDate);
  }

  @override
  Widget build(BuildContext context) {
    final _constants = AppConstants.of(context);

    return BlocConsumer<AnimalParturitionBloc, AnimalParturitionState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        registrationDateController.text = getDate(
          state.parturition.fechaRegistro,
        );
        nameAnimalController.text = state.parturition.name;
        nroParturitionController.text = state.parturition.nroParto.toString();
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
                                  parturition.fechaRegistro = registrationDate,
                              validator: parturition.validateRequired,
                            ),
                          ),
                        ),
                        UIHelper.verticalSpaceMedium(),
                        CustomInput(
                          label: _constants.description,
                          controller: nameAnimalController,
                          maxLength: 100,
                          onSaved: (value) => parturition.name = value,
                          validator: parturition.validateRequired,
                        ),
                        UIHelper.verticalSpaceMedium(),
                        CustomInput(
                          label: _constants.nroParturition,
                          controller: nroParturitionController,
                          maxLength: 9,
                          onSaved: (value) => parturition.nroParto = int.parse(
                            value,
                          ),
                          isNumber: true,
                          validator: parturition.validateRequired,
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

    context.read<AnimalParturitionBloc>().add(
          AnimalParturitionEvent.save(
            productTemplateId: widget.productId,
            parturition: parturition,
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
