import 'package:final_project/widget/information_feild.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();

}


class _SignupScreenState extends State<SignupScreen> {
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
            colors: [
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
                  //(Icons.arrow_back_ios_new_sharp,color: Color(0xFF155BA6),),
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
                        SizedBox(height: 30,),
                        Text('إنشاء حساب جديد',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color(0xFF023E8A),
                      
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text('أدخل بياناتك لإنشاء حسابك',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: Color(0xFF78909C),
                        ),
                        ),

                        SizedBox(height: 20,),
                      
                        InformationField(
                          hintText: 'الاسم الكامل',
                          icon: Icons.person
                        ),
                        
                        SizedBox(height: 10,),
                      
                        InformationField(
                          hintText: '********09',
                          icon: Icons.phone_outlined,
                          keyboardType: TextInputType.phone,
                        ),

                        SizedBox(height: 10,),

                        InformationField(
                          hintText: 'البريد الإلكتروني',
                          icon: Icons.email_rounded,
                        ),
                      
                        SizedBox(height: 10,),
                      
                        InformationField(
                          hintText: 'اسم المستخدم',
                          icon: Icons.account_circle_outlined,
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

                        SizedBox(height: 10,),
                      
                        InformationField(
                          hintText: 'تأكيد كلمةالمرور',
                          icon: Icons.lock_reset,
                          obscureText: _hideConfirmPassword ,
                          onTogglePassword:() {
                            setState(() {
                              _hideConfirmPassword  = !_hideConfirmPassword ;
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
                              'إنشاء الحساب',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize:14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            )
                          ),
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
