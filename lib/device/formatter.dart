import 'package:intl/intl.dart';

class rFormatter{

  static String formateDate(DateTime? data){
    final date =DateTime.now();
    return DateFormat('dd-MMM-YYYY').format(date);// customize if i have neede date formate

  }
  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US',symbol: '\$').format(amount);

  }
  static String fotmatPhoneNumber(String phoneNumber){
    //Assuming a 10 digit us phone number  format: (123)456-789
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';

    }else if(phoneNumber.length==11){
      return '(${phoneNumber.substring(0,4)}) ${phoneNumber.substring(4,7)} ${phoneNumber.substring(7)}';
    }
    //no more custom phone number formaatting logic for different formats if needed
    return phoneNumber;
  }
}