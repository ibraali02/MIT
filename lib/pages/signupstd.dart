import 'package:flutter/material.dart';
import 'student_data_entry.dart'; // استيراد الصفحة الجديدة

class SignUpStd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // الجزء العلوي بلون أزرق مع حواف سفلية دائرية
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF1C9AAA), // لون الجزء العلوي (أزرق)
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0), // حافة سفلية دائرية من اليسار
                bottomRight: Radius.circular(30.0), // حافة سفلية دائرية من اليمين
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.25,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0), // إضافة مسافة من اليسار
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login', // تغيير النص إلى "Login"
                  style: TextStyle(
                    fontSize: 26, // تغيير حجم الخط
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // لون النص أبيض
                  ),
                ),
              ),
            ),
          ),
          // الجزء السفلي
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  // حقل البريد الإلكتروني
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your Email', // تغيير النص
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // حواف دائرية
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 20),
                  // حقل كلمة المرور مع زر لإظهار/إخفاء الرمز
                  TextField(
                    obscureText: true, // لإخفاء النص
                    decoration: InputDecoration(
                      labelText: 'Enter your Password', // تغيير النص
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // حواف دائرية
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility), // أيقونة عرض الرمز
                        onPressed: () {
                          // هنا يمكنك إضافة الكود لإظهار/إخفاء الرمز
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 40), // مساحة فوق الزر
                  // زر "تسجيل الدخول"
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0B6A6D), // تغيير لون الزر إلى الأزرق الداكن
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0), // حواف دائرية
                        ),
                      ),
                      onPressed: () {
                        // منطق لتسجيل الدخول أو الانتقال إلى الصفحة التالية
                      },
                      child: Text(
                        'Login', // تغيير النص إلى "Login"
                        style: TextStyle(fontSize: 20, color: Colors.white), // لون الخط أبيض
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // مسافة بين الأزرار
                  // زر "إنشاء حساب" في حال لم يكن لدى المستخدم حساب
                  TextButton(
                    onPressed: () {
                      // الانتقال إلى صفحة إدخال بيانات الطالب عند الضغط على زر "إنشاء حساب"
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => StudentDataEntry()),
                      );
                    },
                    child: Text(
                      "Don't have an account? Sign Up", // النص الخاص بالزر
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.orange, // لون النص الأزرق
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
