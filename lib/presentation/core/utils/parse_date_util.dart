class ParseDate {
  String getDate({DateTime date}) {
    DateTime d = date;
    var now = new DateTime.now();
    String timeText = "";

    if (d.year - now.year == 0) {
      timeText = d.day.toString() + ' de ' + getMonthString(d.month);
    } else {
      timeText = d.day.toString() +
          ' de ' +
          getMonthString(d.month) +
          ' ' +
          d.year.toString();
    }

    return timeText;
  }

  String getMonthString(m) {
    String month = '';
    switch (m) {
      case 1:
        month = 'Enero';
        break;
      case 2:
        month = 'Febrero';
        break;
      case 3:
        month = 'Marzo';
        break;
      case 4:
        month = 'Abril';
        break;
      case 5:
        month = 'Mayo';
        break;
      case 6:
        month = 'Junio';
        break;
      case 7:
        month = 'Julio';
        break;
      case 8:
        month = 'Agosto';
        break;
      case 9:
        month = 'Septiembre';
        break;
      case 10:
        month = 'Octubre';
        break;
      case 11:
        month = 'Noviembre';
        break;
      case 12:
        month = 'Diciembre';
        break;
      default:
        month = '';
    }

    return month;
  }
}
