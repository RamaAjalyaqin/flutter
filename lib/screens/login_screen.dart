import 'package:final_project/screens/signup_screen.dart';
import 'package:final_project/widget/information_feild.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();

}


class _LoginScreen extends State<LoginScreen> {
  bool _hidePassword = true;
  bool _hideConfirmPassword  = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
            Color(0xFFEAF6FC),
            Color(0xFFC8E8F8),
            Color(0xFFA5D8F2),
            ]
            
          )
        ),
        
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [       
                Padding(
                  padding: const EdgeInsets.only(right:300),
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon:Icon(Icons.arrow_back_ios_new_sharp,color: Color(0xFF155BA6)))
                ),
             
                Container(
                  height: 600,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [BoxShadow(
                      color: const Color(0x26155BA6),
                      blurRadius: 24,
                      spreadRadius:1,
                      offset: const Offset(0, 8),
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Image.asset('assets/images/Syrian Computer Society Logo.png',
                        width: 150,
                        height: 150,
                        ),
                        Text('تسجيل الدخول',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color(0xFF023E8A),
                      
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text('قم بتسجيل الدخول للوصول الى حسابك',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: Color(0xFF78909C),
                        ),
                        ),

                        SizedBox(height: 20,),
                  
                        InformationField(
                          hintText: 'اسم المستخدم',
                          icon: Icons.account_circle_outlined,
                        ),
                      
                        SizedBox(height: 10,),

                        InformationField(
                          hintText: 'البريد الإلكتروني',
                          icon: Icons.email_rounded,
                        ),
                      
                      SizedBox(height: 10,),

                        InformationField(
                          hintText: 'كلمة المرور',
                          icon: Icons.lock_outline,
                          obscureText: _hidePassword,
                          onTogglePassword:() {
                            setState(() {
                              _hidePassword = !_hidePassword;
                            });
                          } ,
                        ),

                        SizedBox(height: 20,),

                        Container(
                          decoration: BoxDecoration(
                          gradient:LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF0077B6),
                              Color(0xFF023E8A),
                            ]
                          ),
                          borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextButton(
                            onPressed: (){},
                            style:TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 15
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),

                              )

                            ),
                           
                            child: Text(
                              'تسجيل الدخول',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize:14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            )
                          ),
                        ),
                        SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              'ليس لديك حساب؟',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize:12,
                                color: Color(0xFF78909C),
                              ),
                            ),
                            SizedBox(width: 2,),
                            
                            TextButton(
                            onPressed: (){
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              )
                             );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                             child: Text(
                              'إنشاء حساب جديد',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize:12,
                                color: Color(0xFF155BA6)

                              ),
                              ),

                             )
                          ],
                        )
                      
                      
                      
                      ],
                    ),
                  ),
                )
                      
              ],
            ),
          ),
        ),
      )

    );
  }
}
