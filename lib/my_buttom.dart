import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  final Function()? onTap;
  const MyButtom({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 100),
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(8) ,
        ),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
