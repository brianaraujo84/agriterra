import 'package:flutter/material.dart';

class AppConstants extends InheritedWidget {
  static AppConstants of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppConstants>();

  const AppConstants({Widget child, Key key}) : super(key: key, child: child);

  // General labels
  final String appName = "Mi Ganadería Lechera Digital";
  final String newRegistration = "Nuevo Registro";
  final String update = "Actualizar";
  final String detail = "Detalle";
  final String back = "Volver";
  final String see = "Ver";
  final String cancelBtn = "Cancelar";
  final String updateBtn = "Actualizar";
  final String registerBtn = "Registrar";
  final String yesBtn = "Si";
  final String alert = "Alerta";
  final String backToMenu = "Volver al menú"; // Error messages
  final String registerSuccessfully = "Registro realizado exitosamente.";
  final String updatedSuccessfully = "Registro actualizado exitosamente.";
  final String deletedSuccessfully = "Registro eliminado exitosamente.";
  final String emptyData = "No se encontraron registros.";

  // Alert sub titles
  final String registerConfirmation = "Esta seguro de realizar el registro?";
  final String updateConfirmation = "Esta seguro de actualizar este registro?";
  final String deleteConfirmation = "Esta seguro de eliminar este registro?";

  // Auth
  final String user = "Usuario";
  final String password = "Contraseña";
  final String enter = "Ingresar";
  final String forgotPassword = "¿Olvidaste tus credenciales?";
  final String recoverPassword = "Recuperar contraseña";
  final String email = "Correo electrónico";
  final String regainPassword = "Recuperar contraseña";
  final String logIn = "Iniciar sesión";
  final String signUp = "Registrarse";

  // Sign Up
  final String producerName = "Productor@/lechor@";
  final String ci = "Cedula de indentidad";
  final String farmName = "Nombre de la granja";
  final String birthDate = "Fecha de Nacimiento";
  final String phone = "Celular";
  final String zone = "Zona";
  final String tachoName = "Número de tacho";

  // Validations
  final String requiredField = "Este dato es requerido";
  final String invalidEmail = "Correo electrónico invalido";
  final String invalidPassword =
      "La contraseña debe tener al menos 4 caracteres";

  // Home - Menu
  final String investmentsTitle = "Inversiones";
  final String investmentsSubtitle = "Animales, instalaciones y equipos";
  final String expensesTitle = "Gastos";
  final String expensesSubtitle = "Gastos de Producción de Leche";
  final String productionsTitle = "Producción";
  final String productionsSubtitle = "Elaboración y Distribución de Leche";
  final String earningsTitle = "Ganancias";
  final String earningsSubtitle = "Réditos en Lácteos, reportes";
  final String resultsTitle = "Resultados";
  final String resultsSubtitle = "Gráfico, Informes en general";

  // Investments Home - Menu
  final String inventoryAnimalsTitle = "Inventario de Animales";
  final String inventoryAnimalsSubtitle = "vacas, leches, vasos, productos....";
  final String inversionAnimalsTitle = "Inversión en Animales";
  final String inversionAnimalsSubtitle =
      "bolivianos en producción en efectivo...";
  final String inversionInstallationsTitle =
      "Inversión en Instalación y Equipos";
  final String inversionInstallationsSubtitle =
      "vacas, leches, vasos, productos";
  final String deprecationsTitle = "Depreciaciones";
  final String deprecationsSubtitle =
      "artículos que pierden su valor con el tiempo";

  // Animal Inventary
  final String months = "Meses";
  final String registrationDate = "Registro";
  final String animalName = "Nombre Animal";
  final String animalDefaultCode = "Código por Default";
  final String price = "Precio Unitario";
  final String ageMonths = "Edad Meses";
  final String animalState = "Estado";
  final String milkDailyProduction = "Producción estimada diaria de leche";
  final String notes = "Notas";
  final String healthyData = "Datos de Salud";
  final String birthDates = "Fecha de partos:";
  final String vaccineDates = "Fecha de Vacunas:";
  final String lastRegister = "(último registro)";
  final String name = "Nombre";
  final String description = "Descripción";
  final String nroParturition = "Nro Parto";

  @override
  bool updateShouldNotify(AppConstants oldWidget) => false;
}
