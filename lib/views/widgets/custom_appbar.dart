import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key, required this.tittle, required this.icon, this.onPressed});
  final String tittle;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        CustomSearchIcon(
          icon: icon,
          onPressed: onPressed,
        )
      ],
    );
  }
}
