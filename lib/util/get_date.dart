import 'package:intl/intl.dart';

String GetDate() {
  DateTime dateString = DateTime.now();
  var formattedDate = DateFormat('MMMM dd, yyyy').format(dateString);

  return formattedDate;
}