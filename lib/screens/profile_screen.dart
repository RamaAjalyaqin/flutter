import 'package:final_project/screens/edit_profile_screen.dart';
import 'package:final_project/widget/menu_item.dart';
import 'package:final_project/widget/profile_background.dart';
import 'package:flutter/material.dart';
import 'package:final_project/screens/profile_screen.dart';
import 'package:final_project/screens/courses_screen.dart';
import 'package:final_project/screens/home_screen.dart';

class ProfileScreen extends StatefulWidget {
 final VoidCallback onCoursesTap;
  const ProfileScreen({super.key,required this.onCoursesTap,});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();

}

class _ProfileScreen extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height:double.infinity ,
            color: const Color(0xFFF0FAFF),
          ),
          ProfileBackground(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10.0),
                child:Column(
                  children: [
                    SizedBox(height: 30,),
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 170,
                          width: 320,
                          margin: const EdgeInsets.only(top: 60),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [BoxShadow(
                              color: Color(0x1A155BA6),
                              blurRadius: 15,
                              offset: Offset(0, 5),
                              )
                            ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 80.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'الاسم الكامل',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                            
                                  ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                  'اسم المستخدم',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 14,
                            
                                  ),
                                  )
                              ],
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 64,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Color(0xFFD4E8F2),
                      
                            child: Icon(
                              Icons.person,
                              color: Color(0xFF155BA6),
                              size: 100,
                              
                              ),
                          ),
                        ) 
                      ],
                    ),
                    SizedBox(height: 20,),
                    MenuItem(
                      icon: Icons.person_outline_rounded,
                      title: 'تعديل الملف الشخصي',
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditProfileScreen(),
                          )
                        );
                      },
                    ),
                      
                    MenuItem(
                      icon: Icons.menu_book_outlined,
                      title: 'دوراتي',
                      onTap:(){},
                    ),
                      
                    MenuItem(
                      icon: Icons.help_outline_rounded,
                      title: 'مساعدة',
                      onTap: (){},
                    ),

                    SizedBox(height: 10,),

                    Container(
                      width: 320,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF5F5),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: Color(0xFFFFDADA),
                        )
                      ),
                      child: Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(18),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(18),
                          onTap: (){},

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.logout_rounded,
                                color: Color(0xFFD64545),
                                size: 20,
                              ),

                              SizedBox(width: 12),
                              Text('تسجيل الخروج',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 14,
                                color: Color(0xFFD64545),
                                fontWeight: FontWeight.bold,
                              ),
                              )

                            ],
                          ),
                        ),
                      ),
                    )

                    
                  ],
                ) ,
                )
              ),
          ),
        ],
      ),
    );
    
  }
}
