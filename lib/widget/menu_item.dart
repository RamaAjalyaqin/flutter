import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  IconData ?icon;
  String ?title;
  VoidCallback ?onTap;

  MenuItem({
    super.key,
    this.icon,
    this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 70,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A155BA6),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row( 
              children: [
                Icon(
                  Icons.chevron_left_rounded,
                  color: Color(0xFF155BA6),
                  size: 22,
                ),
              
                Expanded(
                  child: Text(
                    title ??'title',
                    style: TextStyle(
                      color: Color(0xFF155BA6),
                      fontSize: 14,
                      fontFamily: 'Tajawal',
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                SizedBox(width: 14),
                Icon(
                  icon,
                  color: Color(0xFF155BA6),
                  size: 27,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}