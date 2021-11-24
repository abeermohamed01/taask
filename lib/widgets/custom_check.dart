import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taask/providers/transaction_provider.dart';

class CustomCheckBox extends StatelessWidget {
  final int index;
  CustomCheckBox({this.index});
  @override
  Widget build(BuildContext context) {
    final trProvider = Provider.of<TransactionProvider>(context);
    return GestureDetector(
      onTap: () => index == null ? trProvider.toggleAll() : trProvider.toggle(index),
      child: Container(
        width: 15,
        height: 15,
        child: FittedBox(child: Icon(Icons.check, color: Colors.white)),
        decoration: BoxDecoration(
          color: trProvider.isSelected(index) ? Colors.blue[300] : Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
