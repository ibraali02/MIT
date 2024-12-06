import 'package:flutter/material.dart';

class FirstUpPage extends StatefulWidget {
  @override
  _FirstUpPageState createState() => _FirstUpPageState();
}

class _FirstUpPageState extends State<FirstUpPage> {
  String selectedAge = ''; // حالة تخزين الفئة العمرية المختارة

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white), // لون الأيقونات في شريط العنوان
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Choose Your Age',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue), // لون النص
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              AgeOption(
                text: '10-16',
                imagePath: 'lib/images/age2.png',
                height: 300,
                isSelected: selectedAge == '10-16',
                onTap: () {
                  setState(() {
                    selectedAge = '10-16';
                  });
                },
              ),
              SizedBox(width: 20),
              AgeOption(
                text: '17-24',
                imagePath: 'lib/images/age2.png',
                height: 400,
                isSelected: selectedAge == '17-24',
                onTap: () {
                  setState(() {
                    selectedAge = '17-24';
                  });
                },
              ),
              SizedBox(width: 20),
              AgeOption(
                text: '25-40',
                imagePath: 'lib/images/age3.png',
                height: 500,
                isSelected: selectedAge == '25-40',
                onTap: () {
                  setState(() {
                    selectedAge = '25-40';
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // منطق التخطي
                },
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.white), // لون النص
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Colors.grey,
                  padding: EdgeInsets.all(20),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // منطق المتابعة
                },
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white), // لون النص
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.all(35),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AgeOption extends StatelessWidget {
  final String text;
  final String imagePath;
  final double height;
  final bool isSelected;
  final VoidCallback onTap;

  AgeOption({
    required this.text,
    required this.imagePath,
    required this.height,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // عند النقر يتم تنفيذ الوظيفة
      child: Container(
        width: 100,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFE0A800), // لون أغمق من اللون الأصفر السابق
        ),
        child: Column(
          children: <Widget>[
            // الربع العلوي الأبيض أو الأزرق
            Container(
              height: height * 0.1, // مساحة الجزء العلوي
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue : Colors.white, // تغيير اللون عند الاختيار
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
            ),
            // الصورة والنص في المنتصف
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    imagePath,
                    height: height * 0.4, // ضبط حجم الصورة
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 10),
                  Text(
                    text,
                    style: TextStyle(fontSize: 18, color: Colors.blue), // لون النص
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
