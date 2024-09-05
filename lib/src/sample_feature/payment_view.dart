import 'package:flutter/material.dart';
import 'invoice_view.dart';

/// A simple payment view that displays information about the selected item.
class PaymentView extends StatelessWidget {
  final String itemName;

  const PaymentView({Key? key, required this.itemName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment for $itemName'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Proceed with payment for $itemName'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InvoiceView(itemName: itemName)),
                );
              },
              child: Text('View Invoice'),
            ),
          ],
        ),
      ),
    );
  }
}

