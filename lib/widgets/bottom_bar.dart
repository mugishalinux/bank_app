import 'package:bank_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomBar extends StatefulWidget {
  int selectedItem;
  BottomBar({Key? key, required this.selectedItem}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        selectedItemColor: primaryColor,
        currentIndex: widget.selectedItem,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        onTap: (index) => setState(() {
          widget.selectedItem = index;
        }),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined, size: 30),
              label: "Account"),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail, size: 30), label: "Mail"),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu, size: 30), label: "Menu")
        ],
      ),
    );
  }
}
