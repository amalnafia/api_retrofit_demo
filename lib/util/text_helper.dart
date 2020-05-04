import 'package:intl/intl.dart';

class TextHelper {
  String dateFormatter(String date) {
    DateFormat dateFormat = DateFormat("yyyy-MM-ddTHH:mm:ss");
    DateTime dateTime = dateFormat.parse(date);
    String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);
    return (formattedDate);
  }
}
