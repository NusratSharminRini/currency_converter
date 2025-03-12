import 'package:flutter/material.dart';
import '../screens/converted_screen.dart';
import '../utils/constants.dart';
import '../utils/conversion_logic.dart';
import '../widgets/currency_input.dart';
import '../widgets/convert_button.dart';

class CurrencyConverterScreen extends StatefulWidget {
  @override
  _CurrencyConverterScreenState createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  TextEditingController _usdController = TextEditingController();

  void _convertCurrency() {
    double? usdAmount = double.tryParse(_usdController.text);
    if (usdAmount != null) {
      String convertedAmount = convertUsdToBdt(usdAmount);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ConvertedScreen(result: convertedAmount),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Currency Converter")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter Amount in USD", style: TextStyle(fontSize: 18)),
            CurrencyInput(controller: _usdController),
            SizedBox(height: 20),
            ConvertButton(onPressed: _convertCurrency),
          ],
        ),
      ),
    );
  }
}
