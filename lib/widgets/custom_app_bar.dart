import 'package:bank_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Good Morning",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Hi John Walker",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/9171215/pexels-photo-9171215.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          )
        ],
      ),
    );
  }
}
