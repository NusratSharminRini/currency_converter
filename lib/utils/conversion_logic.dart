import 'constants.dart';

String convertUsdToBdt(double usdAmount) {
  double bdtAmount = usdAmount * exchangeRate;
  return '$usdAmount USD = Tk $bdtAmount';
}
