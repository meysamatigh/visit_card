import 'package:flutter/material.dart';

class CostumCard extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onTap;
  const CostumCard({
    required this.title,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkWell(
        onTap: onTap,
        child: Image(
          image: AssetImage('images/$title.png'),
        ),
      ),
    );
  }
}
