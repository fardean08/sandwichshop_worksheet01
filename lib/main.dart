import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// Step 1: Use OrderScreen instead of static Scaffold
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sandwich Shop App',
      home: OrderScreen(),
    );
  }
}

// Step 2: Create OrderScreen (stateful) but no interactivity yet
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _quantity = 5;
  String _sandwichType = 'Footlong';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sandwich Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Reuse old OrderItemDisplay
            OrderItemDisplay(_quantity, _sandwichType),

            // Keep some of the old compact display for reference
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                OrderCompactDisplay(3, 'BLT sandwich(es)'),
                SizedBox(width: 8),
                OrderCompactDisplay(2, 'Veggie sandwich(es)'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OrderItemDisplay extends StatelessWidget {
  final int quantity;
  final String itemType;

  const OrderItemDisplay(this.quantity, this.itemType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        '$quantity $itemType sandwich(es)',
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}

class OrderCompactDisplay extends StatelessWidget {
  final int quantity;
  final String itemType;

  const OrderCompactDisplay(this.quantity, this.itemType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text('$quantity $itemType 🥪'),
    );
  }
}