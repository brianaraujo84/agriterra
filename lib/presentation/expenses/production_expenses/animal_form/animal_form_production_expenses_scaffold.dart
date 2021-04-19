import 'package:agriterra/application/expenses/production_expenses/production_expenses_bloc.dart';
import 'package:agriterra/domain/expenses/entities/animal_p_e.dart';
import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:agriterra/presentation/core/widgets/custom_drop_down_widget.dart';
import 'package:agriterra/presentation/core/widgets/custom_input.dart';
import 'package:agriterra/presentation/core/widgets/loading_modal_widget.dart';
import 'package:agriterra/presentation/core/widgets/primary_button_widget.dart';
import 'package:agriterra/presentation/core/widgets/secondary_button_widget.dart';
import 'package:fa_stepper/fa_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimalFormProductionExpensesScaffold extends StatefulWidget{
  @override
  _AnimalFormScaffoldState createState()=> _AnimalFormScaffoldState();
}

class _AnimalFormScaffoldState extends State<AnimalFormProductionExpensesScaffold>{

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final AnimalPE animal = AnimalPE.emply();
  final nameAnimalController = TextEditingController();
  DateTime registrationDate = DateTime.now();
  final quantityController = TextEditingController();
  final amountController = TextEditingController();
  final nameProductIdController  = TextEditingController();
  final registrationDateController = TextEditingController();

  int _currentStep = 0;

  @override
  void initState() {
    super.initState();
    registrationDateController.text = getDate(registrationDate);
  }


  @override
  Widget build(BuildContext context) {
    final _constants = AppConstants.of(context);

    return BlocConsumer<ProductionExpensesBloc,ProductionExpensesState>(
      listenWhen: (p,c)=>
      p.isViewing != c.isViewing || p.isEditing != c.isEditing,
      listener: (context, state){
        if( (state.isViewing || state.isEditing) && animal.id ==0){
          registrationDateController.text = getDate(state.animal.fechaRegistro);
          nameAnimalController.text= state.animal.name;
          quantityController.text = state.animal.quantity.toString();
          amountController.text = state.animal.amount.toString();
          nameProductIdController.text = state.animal.product_id.name;
        }
      },
      builder: (context, state){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: outComesFinishColor,
            title: Text(
              state.isViewing
                  ?  _constants.detail
                  : state.isEditing
                    ? _constants.update
                      : _constants.newRegistration,
            ),
            actions: [
              if (state.animal.id != 0 && state.isViewing) ...[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    context.read<ProductionExpensesBloc>().add(
                      ProductionExpensesEvent.startEditing(),
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
                      context.read<ProductionExpensesBloc>().add(
                        ProductionExpensesEvent.delete(
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
              : _buildEditModeStepper(state : state, constants: _constants), // _buildEditMode(state: state, constants: _constants),

        );
      },
    );




  }


  String getDate(DateTime dateTime) {
    if (dateTime != null) {
      return "${dateTime.day.toString().padLeft(2, '0')}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.year.toString().padLeft(4, '0')}";
    } else {
      return "";
    }
  }




  Widget _buildEditMode({
    ProductionExpensesState state,
    AppConstants constants
  }) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Form(
            key: formkey,
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
                            onSaved: (value)=>
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
                      onSaved: (value)=> animal.name = value,
                      validator: animal.validateRequired,
                    disabled: !state.isEditing && !state.isCreating,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  CustomInput(
                      label: constants.quantity,
                      controller: quantityController,
                      maxLength: 100,
                      onSaved: (value)=> animal.quantity = double.parse(value),
                      validator: animal.validateRequired,
                    disabled: !state.isEditing && !state.isCreating,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  CustomInput(
                      label: constants.amount,
                      controller: amountController,
                      maxLength: 100,
                      onSaved: (value)=> animal.amount = double.parse(value),
                      validator: animal.validateRequired,
                      disabled: !state.isEditing && !state.isCreating,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  IgnorePointer(
                    ignoring: !state.isEditing && !state.isCreating,
                    child: CustomDropDown(
                      title: constants.listOfProducts,
                      onChanged: (value){
                        context.read<ProductionExpensesBloc>().add(
                          ProductionExpensesEvent.onChangeProductList(
                            type: value,
                          ),
                        );
                      },
                      items: state.listOfProducts,
                      value: state.animal.product_id.id == 0
                        ? null
                          : state.animal.product_id,
                      validator: animal.validateDynamic,
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),
                  CustomInput(
                      label: constants.nameProduct,
                      controller: nameProductIdController,
                      maxLength: 100,
                      onSaved: (value)=> animal.product_id.name = value,
                    disabled: !state.isEditing && !state.isCreating,
                  ),
                  UIHelper.verticalSpaceLarge(),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                          child: SecondaryButton(
                            onPressed: (){
                              ExtendedNavigator.of(context).pop();
                            },
                            isValid: true,
                            textButton: state.isEditing?
                              constants.cancelBtn
                              : constants.back,
                          ),
                      ),
                      if(state.isEditing || state.isCreating) ...[
                        UIHelper.horizontalSpaceMedium(),
                        Expanded(
                          flex: 1,
                            child: PrimaryButton(
                              color: outComesFinishColor,
                              onPressed: () async {
                                  _closeKeyboard(context);
                                  if(!formkey.currentState.validate()){
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
                      ]
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

  void _closeKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  void _submit({BuildContext context}) async{
    if (!formkey.currentState.validate()) {
      return;
    }
    formkey.currentState.save();

    context.read<ProductionExpensesBloc>().add(
      ProductionExpensesEvent.save(
        animal: animal,
      ),
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



_buildViewDetailMode({AnimalPE animal, AppConstants constants}) {

}

  Widget _buildEditModeStepper({
    ProductionExpensesState state,
    AppConstants constants
  }) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: UIHelper.spaceMedium,
                vertical: UIHelper.spaceLarge,
              ),
              child: Column(
                children: [
                  Container(
                    child: FAStepper(
                      type: FAStepperType.vertical,
                      //  titleHeight: 120.0,
                      steps:  _stepperWitgets(state,constants),
                      stepNumberColor: Colors.green,
                      physics: ClampingScrollPhysics(),
                      currentStep: this._currentStep,
                      onStepTapped: (step) async {
                        setState(() {
                          this._currentStep = step;
                        });
                      },
                      onStepContinue: (){
                        setState(() {
                          if(this._currentStep< _stepperWitgets(state,constants).length -1){
                            this._currentStep = this._currentStep+1;
                          }else{
                            this._currentStep = 0;
                          }
                        }
                        );
                      },
                      onStepCancel: (){
                        setState(() {
                          if(this._currentStep>0){
                            this._currentStep = this._currentStep-1;
                          }else{
                            this._currentStep = 0;
                          }
                        });
                      },
                    ),
                  ),
                  UIHelper.verticalSpaceLarge(),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SecondaryButton(
                          onPressed: (){
                            ExtendedNavigator.of(context).pop();
                          },
                          isValid: true,
                          textButton: state.isEditing?
                          constants.cancelBtn
                              : constants.back,
                        ),
                      ),
                      if(state.isEditing || state.isCreating) ...[
                        UIHelper.horizontalSpaceMedium(),
                        Expanded(
                          flex: 1,
                          child: PrimaryButton(
                            color: outComesFinishColor,
                            onPressed: () async {
                              _closeKeyboard(context);
                              if(!formkey.currentState.validate()){
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
                      ]
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }





  List<FAStep> _stepperWitgets(ProductionExpensesState state, AppConstants constants) {
    List<FAStep> _stepper= [
      FAStep(
        isActive: true,
        state: FAStepstate.complete,
        title: Text("Fecha"),
        content: Container(
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
            onSaved: (value)=>
            animal.fechaRegistro = registrationDate,
            validator: animal.validateRequired,
            ),
          ),

        ),
      ),

      FAStep(
        isActive: true,
        title: Text("Nombre Animal"),
        content: Container(
          child: CustomInput(
            label: constants.animalName,
            controller: nameAnimalController,
            maxLength: 100,
            onSaved: (value)=> animal.name = value,
            validator: animal.validateRequired,
            disabled: !state.isEditing && !state.isCreating,
          ),
        ),
      ),

      FAStep(
          //state: FAStepstate.editing,
          isActive: true,
          title: Text("Cantidad"),
          content: Container(
              child: CustomInput(
                label: constants.quantity,
                controller: quantityController,
                maxLength: 100,
                onSaved: (value)=> animal.quantity = double.parse(value),
                validator: animal.validateRequired,
                disabled: !state.isEditing && !state.isCreating,
              ),
          ),
      ),
      FAStep(
         // state: FAStepstate.error,
          isActive: true,
          title: Text("Monto"),
          content: Container(
            child: CustomInput(
              label: constants.amount,
              controller: amountController,
              maxLength: 100,
              onSaved: (value)=> animal.amount = double.parse(value),
              validator: animal.validateRequired,
              disabled: !state.isEditing && !state.isCreating,
            ),
          ),
      ),
      FAStep(
         // state: FAStepstate.indexed,
          isActive: true,
          title: Text("Lista de Producto"),
          content: Container(
            child: IgnorePointer(
              ignoring: !state.isEditing && !state.isCreating,
              child: CustomDropDown(
                title: constants.listOfProducts,
                onChanged: (value){
                  context.read<ProductionExpensesBloc>().add(
                    ProductionExpensesEvent.onChangeProductList(
                      type: value,
                    ),
                  );
                },
                items: state.listOfProducts,
                value: state.animal.product_id.id == 0
                    ? null
                    : state.animal.product_id,
                validator: animal.validateDynamic,
              ),
            ),
          ),
      ),
      FAStep(
       // state: FAStepstate.error,
        isActive: true,
        title: Text("Nombre del Producto"),
        content: Container(
          child: CustomInput(
            label: constants.nameProduct,
            controller: nameProductIdController,
            maxLength: 100,
            onSaved: (value)=> animal.product_id.name = value,
            disabled: !state.isEditing && !state.isCreating,
          ),
        ),
      ),
    ];
    return _stepper;
  }
}


