import 'package:bank_app/utils/colors.dart';
import 'package:flutter/material.dart';


class TransactionRow extends StatelessWidget {
  final String? title;
  final String? description;
  final double? amount;
  final bool? isPositif;

  const TransactionRow(
      {Key? key,
      required this.title,
      required this.description,
      required this.amount,
      required this.isPositif})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.inventory_outlined,
            size: 30,
            color: primaryColor,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              description!,
              style: const TextStyle(fontSize: 17, color: Colors.grey),
            ),
          ],
        )),
        Text(
          isPositif!
              ? "+\$ ${amount!.toStringAsFixed(2)}"
              : "-\$ ${amount!.toStringAsFixed(2)}",
          style: TextStyle(
            color: isPositif! ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ]),
    );
  }
}
