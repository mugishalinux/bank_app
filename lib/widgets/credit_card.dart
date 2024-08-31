import 'package:bank_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),
      child: Container(
        height: 230,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            color: primaryColor,
            image: const DecorationImage(
                image: AssetImage("assets/images/gradient-background.jpg"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(25)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/visa-logo.png",
                width: 80,
              ),
              const Text(
                "Mundur",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: _height / 13,
          ),
          const Text(
            "2838 3934 0747 4883",
            style: TextStyle(color: Colors.white70, fontSize: 18),
          ),
          SizedBox(
            height: _height / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "John Walker",
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
              Text(
                "01/24",
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
