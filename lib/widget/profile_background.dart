
import 'package:flutter/material.dart';

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          const ColoredBox(
            color: Color(0xFFF7FAFC),
          ),

          Positioned(
            top: -190,
            left: -65,
            right: -65,
            child: Container(
              height: 350,
              decoration: const BoxDecoration(
                color: Color(0xFFA5D8F2),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(220),
                ),
              ),
            ),
          ),

          Positioned(
            top: -160,
            left: 40,
            right: 40,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFF72C6EF).withOpacity(0.22),
                    const Color(0xFF72C6EF).withOpacity(0.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
