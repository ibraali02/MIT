import 'package:flutter/material.dart';
import 'signupstd.dart'; // تأكد من استيراد الصفحة الجديدة

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // الجزء العلوي مع اللون الجديد
          Container(
            color: Color(0xFFF1ECF0), // لون الجزء العلوي
            height: MediaQuery.of(context).size.height * 0.5,
            child: Center(
              child: Image.asset(
                'lib/images/CHAIR.png', // مسار الصورة
                fit: BoxFit.cover, // ملائمة الصورة لتغطية المساحة
              ),
            ),
          ),
          // الجزء السفلي
          Container(
            color: Color(0xFF5CC2D2), // لون أزرق جديد
            height: MediaQuery.of(context).size.height * 0.5,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // إضافة النص الجديد
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Welcome to\nEducora.',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // لون النص أسود
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // مساحة بين النص الجديد وLOG IN AS
                  Align(
                    alignment: Alignment.centerLeft, // محاذاة النص لليسار
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0), // إضافة مسافة من اليسار
                      child: Text(
                        'LOG IN AS',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // لون النص أسود
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // مساحة بين النص والأزرار
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9, // تقليل العرض قليلاً
                    height: 60, // زيادة ارتفاع الزر
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange, // لون الزر برتقالي
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUpStd()), // الانتقال إلى صفحة التسجيل للطلاب
                        );
                      },
                      child: Text(
                        'STUDENT',
                        style: TextStyle(fontSize: 20, color: Colors.white), // لون الخط أبيض
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9, // تقليل العرض قليلاً
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        // هنا يمكنك إضافة الأكواد الخاصة بتسجيل الدخول كمعلم
                      },
                      child: Text(
                        'TEACHER',
                        style: TextStyle(fontSize: 20, color: Colors.white), // لون الخط أبيض
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