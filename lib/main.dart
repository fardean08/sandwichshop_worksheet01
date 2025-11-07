import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sandwich Shop App',
      home: OrderScreen(maxQuantity: 5),
    );
  }
}

// --- OrderScreen now interactive ---
class OrderScreen extends StatefulWidget {
  final int maxQuantity;
  const OrderScreen({super.key, this.maxQuantity = 10});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _quantity = 0;
  String _sandwichType = 'Footlong';

  void _increaseQuantity() {
    if (_quantity < widget.maxQuantity) {
      setState(() => _quantity++);
    }
  }

  void _decreaseQuantity() {
    if (_quantity > 0) {
      setState(() => _quantity--);
    }
  }

  void _setSandwichType(String type) {
    setState(() => _sandwichType = type);
  }

  @override
  Widget build(BuildContext context) {
    final bool canAdd = _quantity < widget.maxQuantity;
    final bool canRemove = _quantity > 0;

    return Scaffold(
      appBar: AppBar(title: const Text('Sandwich Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OrderItemDisplay(_quantity, _sandwichType),
            const SizedBox(height: 20),

            // Add sandwich type selector
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StyledButton(
                  text: 'Footlong',
                  onPressed: () => _setSandwichType('Footlong'),
                  backgroundColor: _sandwichType == 'Footlong'
                      ? Colors.green
                      : Colors.grey.shade400,
                ),
                const SizedBox(width: 10),
                StyledButton(
                  text: 'Six-inch',
                  onPressed: () => _setSandwichType('Six-inch'),
                  backgroundColor: _sandwichType == 'Six-inch'
                      ? Colors.green
                      : Colors.grey.shade400,
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Add / Remove buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StyledButton(
                  text: 'Add',
                  onPressed: canAdd ? _increaseQuantity : null,
                  backgroundColor: Colors.blue,
                ),
                StyledButton(
                  text: 'Remove',
                  onPressed: canRemove ? _decreaseQuantity : null,
                  backgroundColor: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// --- Styled button widget ---
class StyledButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;

  const StyledButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: Text(text),
    );
  }
}

// --- Simplified OrderItemDisplay ---
class OrderItemDisplay extends StatelessWidget {
  final int quantity;
  final String sandwichType;

  const OrderItemDisplay(this.quantity, this.sandwichType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$quantity $sandwichType sandwich(es)',
      style: const TextStyle(fontSize: 22),
    );
  }
}