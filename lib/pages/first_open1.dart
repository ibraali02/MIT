import 'package:flutter/material.dart';
import 'first_up.dart';
import 'login_page.dart'; // تأكد من استيراد الصفحة الجديدة

class FirstOpen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/first1.jpg'), // تأكد من وجود الصورة في هذا المسار
            fit: BoxFit.cover, // لتغطية الخلفية بالكامل
          ),
        ),
        child: Stack(
          children: [

            Positioned(
              bottom: 50, // المسافة من أسفل الشاشة
              left: MediaQuery.of(context).size.width / 2 - 30, // محاذاة الزر في المنتصف
              child: CircleAvatar(
                radius: 30, // نصف قطر الزر
                backgroundColor: Colors.orange, // لون الزر
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward, // أيقونة السهم
                    color: Colors.white, // لون الأيقونة
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()), // الانتقال إلى الصفحة الجديدة
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}