import 'package:final_project/widget/information_feild.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreen();

}


class _EditProfileScreen extends State<EditProfileScreen> {
int selectedIndex = 2;
bool _hidePassword = true;
bool _hideConfirmPassword  = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF0FAFF),
        
         leading:IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            icon:Icon(Icons.arrow_back_ios_new_sharp,color: Color(0xFF155BA6))
          ),
        
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'تعديل الملف الشخصي',
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E8A),
            ), 
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height:double.infinity ,
        color: const Color(0xFFF0FAFF),
        child: SafeArea(
          child:SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CircleAvatar(
                      radius: 54,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xFFD4E8F2),
                      child: Icon(
                        Icons.person,
                        color: Color(0xFF155BA6),
                        size: 90,    
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 90,top:70),
                      child: CircleAvatar(
                        radius:16 ,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Color(0xFF155BA6),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon:Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.white,
                              size: 18, 
                              ) 
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  'تعديل الصورة الشخصية',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 12,
                    color: Colors.blueGrey,
                  ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width:  400,
                    height: 630,
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
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'تعديل المعلومات الشخصية',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF155BA6)
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),

                          InformationField(
                          hintText: 'الاسم الكامل',
                          icon: Icons.person,
                          verticalPanding: 10,
                        ),

                        SizedBox(height: 15,),
                      
                        InformationField(
                          hintText: 'اسم المستخدم',
                          icon: Icons.account_circle_outlined,
                          verticalPanding: 10,
                        ),

                        SizedBox(height: 15,),
                      
                        InformationField(
                          hintText: 'البريد الإلكتروني',
                          icon: Icons.email_rounded,
                          verticalPanding: 10,
                        ),

                        SizedBox(height: 15,),
                      
                        InformationField(
                          hintText: '********09',
                          icon: Icons.phone_outlined,
                          keyboardType: TextInputType.phone,
                          verticalPanding: 10,
                        ),

                        SizedBox(height: 15,),

                        InformationField(
                          hintText: 'كلمة المرور الجديدة',
                          icon: Icons.lock_outline,
                          verticalPanding: 10,
                          obscureText: _hidePassword,
                          onTogglePassword:() {
                            setState(() {
                              _hidePassword = !_hidePassword;
                            });
                          } ,
                        ),

                        SizedBox(height: 15,),

                        InformationField(
                          hintText: 'تأكيد كلمة المرور',
                          icon: Icons.lock_reset,
                          verticalPanding: 10,
                          obscureText: _hideConfirmPassword ,
                          onTogglePassword:() {
                            setState(() {
                              _hideConfirmPassword  = !_hideConfirmPassword ;
                            });
                          } ,
                        ),
                        SizedBox(height: 27,),

                        Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF155BA6),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: (){},

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_circle_outline_rounded,
                                  color: Colors.white,
                                  size: 25,
                                ),

                                SizedBox(width: 12),
                                Text('حفظ التعديلات',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xFF155BA6),width: 1.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: (){},
                            child: 
                            Padding(
                              padding: const EdgeInsets.only(left: 80,top: 15),
                              child: Text('إلغــــــــــــــــــــاء',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 16,
                                color: Color(0xFF155BA6),
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            )
                              
                            
                          ),
                        ),
                      )

                        ],
                      ),
                    ),
                  )

              ],
            ),
          )
          ),
      ),
    );
  }
}
