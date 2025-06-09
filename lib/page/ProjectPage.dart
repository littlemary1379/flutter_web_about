import 'package:flutter/material.dart';
import 'package:flutter_web_about/data/ProjectItem.dart';

import '../data/TimelineItem.dart';
import '../theme/color_theme.dart';

class ProjectPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var box = Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Company and Project',
                style: TextStyle(
                    decoration: TextDecoration.none, // <-- 밑줄 제거
                    fontFamily: 'esamanru',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: ColorTheme.mainColor_9c4b3b
                ),
              ),

              const SizedBox(height: 10,),

              const Text(
                'Click to see more details about my career.',
                style: TextStyle(
                    decoration: TextDecoration.none, // <-- 밑줄 제거
                    fontFamily: 'pretendard',
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: ColorTheme.mainColor_9c4b3b
                ),
              ),

              const SizedBox(height: 30,),

              TimelineWidget()
            ]
          )
        )
    );
    return box;
  }

}

class TimelineWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 14,
                    height: 14,
                    decoration: const BoxDecoration(
                      color: ColorTheme.mainColor_9c4b3b,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 2,
                    height: index == items.length - 1 ? 0 : 88,
                    color: ColorTheme.mainColor_9c4b3b,
                  ),
                ],
              ),

              const SizedBox(width: 20),

              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    print("print ? ${items[index].description}");
                    var key = "";

                    switch(items[index].description) {
                      case "Everex" : key = "everex";
                      case "하렉스인포텍" : key = "harex";
                      case "온앤오프 컴퍼니" : key = "onandoff";
                      case "신성아이씨티" : key = "sinsung";
                      case "주식회사 고운우리" : key = "goeun";
                    }

                    showCustomPopup(context, item.description, key);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.year,
                          style: const TextStyle(
                            decoration: TextDecoration.none, // <-- 밑줄 제거
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 4),
                      Text(item.description,
                          style: const TextStyle(
                            decoration: TextDecoration.none, // <-- 밑줄 제거
                            fontSize: 14,
                            color: Colors.black54,
                          )
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void showCustomPopup(BuildContext context, String title, String key) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    var item = companyList.firstWhere(
          (company) => company.key == key,
    );

    showDialog(
      context: context,
      barrierDismissible: true, // 바깥 클릭 시 닫힘
      barrierColor: Colors.black.withOpacity(0.5), // 반투명 배경
      builder: (BuildContext context) {
        return Center(
          child: Container(
            width: width * 0.8,
            height: height * 0.8,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListView(
              children: [
                Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'pretendard',
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none, // <-- 밑줄 제거
                      fontSize: 24,
                      color: ColorTheme.mainColor_9c4b3b
                    )
                ),
                const SizedBox(height: 20,),
                ...List.generate(item.projects.length, (i) {
                  final project = item.projects[i];
                  return Wrap(
                    direction: Axis.vertical,
                    spacing: 10,
                    children: [
                      Text(
                          project.name,
                          style: const TextStyle(
                            fontFamily: 'pretendard',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none, // <-- 밑줄 제거
                            fontSize: 16,
                            color: Colors.black54,
                          )
                      ),

                      const SizedBox(height: 0,),

                      Text(
                          project.period,
                          style: const TextStyle(
                            fontFamily: 'pretendard',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none, // <-- 밑줄 제거
                            fontSize: 14,
                            color: Colors.black54,
                          )
                      ),

                      Text(
                          "role : ${project.role}",
                          style: const TextStyle(
                            fontFamily: 'pretendard',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none, // <-- 밑줄 제거
                            fontSize: 14,
                            color: Colors.black54,
                          )
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // 가로축: 왼쪽 정렬
                        children: [
                          const Text(
                              "gole : ",
                              style: TextStyle(
                                fontFamily: 'pretendard',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none, // <-- 밑줄 제거
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                          ),
                          Text(
                              project.goal,
                              style: const TextStyle(
                                fontFamily: 'pretendard',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none, // <-- 밑줄 제거
                                fontSize: 14,
                                color: Colors.black54,
                              )
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // 가로축: 왼쪽 정렬
                        children: [
                          const Text(
                            "key features developed : ",
                            style: TextStyle(
                              fontFamily: 'pretendard',
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none, // <-- 밑줄 제거
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                              project.description,
                              style: const TextStyle(
                                fontFamily: 'pretendard',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none, // <-- 밑줄 제거
                                fontSize: 14,
                                color: Colors.black54,
                              )
                          ),
                        ],
                      ),
                      const SizedBox(height: 30,)
                    ],
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}