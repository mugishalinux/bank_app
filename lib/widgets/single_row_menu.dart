import 'package:bank_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class SingleRowMenu extends StatelessWidget {
  final VoidCallback? onTap;
  final String? iconUrl;
  final String? text;

  const SingleRowMenu(
      {Key? key, this.onTap, required this.iconUrl, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            padding: const EdgeInsetsDirectional.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              iconUrl!,
              color: primaryColor,
              width: 30,
            ),
          ),
        ),
        Text(
          text!,
          style: const TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
