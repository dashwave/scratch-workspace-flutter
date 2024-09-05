import 'package:flutter/material.dart';

class InvoiceView extends StatelessWidget {
  final String itemName;

  const InvoiceView({Key? key, required this.itemName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice for $itemName'),
      ),
      body: Center(
        child: Text('This is the invoice for $itemName.'),
      ),
    );
  }
}
