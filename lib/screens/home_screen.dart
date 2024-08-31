import 'package:bank_app/widgets/credit_card.dart';
import 'package:bank_app/widgets/single_row_menu.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/balance_card.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/transaction_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const CreditCard(),
            const BalanceCard(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              child: Row(children: const [
                SingleRowMenu(
                    iconUrl: "assets/images/top-up.svg", text: "Top up"),
                SingleRowMenu(
                    iconUrl: "assets/images/data-transfer.svg",
                    text: "Transfer"),
                SingleRowMenu(
                    iconUrl: "assets/images/wallet.svg", text: "Withdraw"),
                SingleRowMenu(iconUrl: "assets/images/app.svg", text: "More"),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "History Transactions",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              child: Text(DateFormat.yMMMd('en_US').format(DateTime.now())),
            ),
            const TransactionRow(
                title: "Top up",
                description: "a top up balance sent from jackson",
                amount: 10.30,
                isPositif: true),
            const TransactionRow(
                title: "Withdraw",
                description: "withdraw money",
                amount: 50,
                isPositif: false),
          ],
        )),
      ),
      bottomNavigationBar: BottomBar(
        selectedItem: 0,
      ),
    );
  }
}
