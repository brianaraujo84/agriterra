abstract class Validators {
  // This class is intended to be used as a mixin, and should not be
  // extended directly.
  factory Validators._() => null;

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-z\-0-9]+\.)+[a-z]{2,}))$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return "Email invalido.";
    } else {
      return null;
    }
  }

  String validatePhone(String value) {
    Pattern pattern = r'^[0-9]{8}$';
    final regex = RegExp(pattern);
    if (value.isNotEmpty) {
      if (!regex.hasMatch(value)) {
        return "EL número de telefono no es valido.";
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  String validateCelPhone(String value) {
    Pattern pattern = r'^[67][0-9]{7}$';
    final regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return "EL número de celular no es valido.";
    } else {
      return null;
    }
  }

  String validateRequired(String value) {
    if (value == null || value.isEmpty) {
      return "Este dato es requerido";
    } else {
      return null;
    }
  }

  String validateDynamic(dynamic value) {
    if (value == null) {
      return "Este dato es requerido";
    } else {
      return null;
    }
  }

  String validateGreaterThanZero(String value) {
    if (value.isEmpty || value == null) {
      return "Este dato es requerido";
    } else {
      if (double.parse(value) <= 0) {
        return "Este dato debe ser mayor a cero";
      } else {
        return null;
      }
    }
  }

  String validateTwoFields(String value1, String value2) {
    // It have to be one at least one value or both.
    if (((value1 == null || value1.isEmpty) &&
            (value2 != null&&value2.isNotEmpty)) ||
        ((value1 != null && value1.isNotEmpty) &&
            (value2 == null || value2.isEmpty)) ||
        ((value1 != null && value1.isNotEmpty) &&
            (value2 != null && value2.isNotEmpty))) {
      return null;
    } else {
      return "Este dato es requerido";
    }
  }
}
