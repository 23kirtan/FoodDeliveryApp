import 'package:flutter/material.dart';
import 'package:fooddelivery_app/pages/creditcart.dart';
// Import your existing Credit Card Page

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String _selectedPaymentMethod = 'Credit Card'; // Default selection

  void _handlePayment() {
    if (_selectedPaymentMethod == 'Credit Card') {
      // Navigate to your existing Credit Card Payment Page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreditCard()),
      );
    } else {
      // Show Confirmation Dialog for Cash on Delivery
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Confirm Order"),
          content: const Text("Are you sure you want to pay with Cash on Delivery?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Order placed with Cash on Delivery! ✅")),
                );
                Navigator.pop(context); // Close Payment Page
              },
              child: const Text("Confirm"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Choose Payment Method")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Select Payment Method:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),

            // Radio Button: Credit Card
            RadioListTile<String>(
              title: const Text("Credit Card 💳"),
              value: "Credit Card",
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),

            // Radio Button: Cash on Delivery
            RadioListTile<String>(
              title: const Text("Cash on Delivery 🏠"),
              value: "Cash on Delivery",
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),

            const SizedBox(height: 30),

            // Proceed Button
            Center(
              child: ElevatedButton(
                onPressed: _handlePayment,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text("Proceed", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
