import 'package:flutter/material.dart';

class InformationField extends StatelessWidget {
  String ?hintText;
  IconData? icon;
  TextInputType keyboardType;
  bool obscureText;
  VoidCallback? onTogglePassword;
  double? verticalPanding;

  InformationField({
    super.key,
    this.hintText,
    this.icon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.onTogglePassword,
    this.verticalPanding,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xFF0077B6),
      cursorWidth: 2.0,
      cursorHeight: 22,
      cursorRadius: const Radius.circular(4),
      textAlign: TextAlign.right,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical:verticalPanding ?? 10 ),
        hint: Text(
          hintText ?? 'hint text',
          style: const TextStyle(
            color: Colors.grey,
            fontFamily: 'Tajawal',
            fontSize: 12,
          ),
          textDirection: TextDirection.rtl,
        ),
        suffixIcon:
        Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: const Color(0xFFD4E8F2),
                radius: 18,
                child: Icon(
                  icon,
                  color: const Color(0xFF155BA6),
                  size: 20,
                ),
              ),
            ), 
        
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (onTogglePassword != null) 
              IconButton(
                onPressed: onTogglePassword,
                icon: Icon(
                  obscureText
                  ? Icons.visibility_off_sharp
                  : Icons.visibility_sharp,
                  color: Color(0xFF155BA6),
               ),
              ),

            
          ],
        ),
        filled: true,
        fillColor: const Color(0xFFF0FAFF),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color(0xFFD4E8F2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color(0xFF0077B6),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
