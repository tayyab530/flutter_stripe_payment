// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // set the publishable key for Stripe - this is mandatory
  Stripe.publishableKey = "pk_test_51MWHqJKIWy71nLb0qNsooxEztn9RverJiTSf27PrZmLnj6yWecwQ43TYL74bOstBzx1lYk5M5PbO1eexd9EnO04j00q3BIf1L0";
  runApp(const PaymentScreen());
}

// payment_screen.dart
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: CardField(
            onCardChanged: (card) {
              print(card);
            },
          ),
        ),
      ),
    );
  }
}