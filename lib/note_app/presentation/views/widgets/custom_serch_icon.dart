import 'package:flutter/material.dart';
class customSerachIcon extends StatelessWidget {
  const customSerachIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(0.10),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(icon,size: 30,),
          onPressed: () {},
        ),
      ),
    );
  }
}
