import 'package:flutter/cupertino.dart';

import '../theme/color_theme.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final years = getDeveloperYears(2020, 9);

    var box = Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$years년차 Android, Flutter 개발자',
              style: const TextStyle(
                decoration: TextDecoration.none, // <-- 밑줄 제거
                fontFamily: 'esamanru',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: ColorTheme.mainColor_9c4b3b,
              ),
            ),

            const SizedBox(height: 40,),

            const Text('Base Develop : Android Native',
              style: TextStyle(
                fontFamily: 'pretendard',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ColorTheme.mainColor_9c4b3b,
                decoration: TextDecoration.none, // <-- 밑줄 제거
              ),
            ),

            const SizedBox(height: 10,),

            const Text('Sub Develop : Hybrid Flutter',
              style: TextStyle(
                fontFamily: 'pretendard',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ColorTheme.mainColor_9c4b3b,
                decoration: TextDecoration.none, // <-- 밑줄 제거
              ),
            ),

            const SizedBox(height: 30,),

            const Text('Primary Programming Language : Kotlin',
              style: TextStyle(
                fontFamily: 'pretendard',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ColorTheme.mainColor_9c4b3b,
                decoration: TextDecoration.none, // <-- 밑줄 제거
              ),
            ),

            const SizedBox(height: 10,),

            const Text('Secondary Programming Language : Java, Dart',
              style: TextStyle(
                fontFamily: 'pretendard',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ColorTheme.mainColor_9c4b3b,
                decoration: TextDecoration.none, // <-- 밑줄 제거
              ),
            ),

            const SizedBox(height: 10,),

            const Text('Working knowledge of : Swift',
              style: TextStyle(
              fontFamily: 'pretendard',
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: ColorTheme.mainColor_9c4b3b,
              decoration: TextDecoration.none, // <-- 밑줄 제거
              ),
            ),

            const SizedBox(height: 30,),

            Container(
              width: double.infinity,
              height: 1,
              color: ColorTheme.mainColor_9c4b3b,
            ),

            const SizedBox(height: 30,),

            const Text('Education :\nBachelor’s Degree in Chemical Engineering\nDong-A University, Graduated in 2018',
              style: TextStyle(
                fontFamily: 'pretendard',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ColorTheme.mainColor_9c4b3b,
                decoration: TextDecoration.none, // <-- 밑줄 제거
              ),
            ),


          ],
        )
      )
    );

    return box;

  }

  int getDeveloperYears(int startYear, int startMonth) {
    final now = DateTime.now();
    final start = DateTime(startYear, startMonth);
    final totalMonths = (now.year - start.year) * 12 + now.month - start.month;
    return (totalMonths ~/ 12) + 1; // n년 차 기준
  }
}