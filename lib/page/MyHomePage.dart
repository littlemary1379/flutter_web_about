import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_web_about/theme/color_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final PageController _pageController = PageController();

  void _goToContactPage() {
    _pageController.animateToPage(
      3, // 0부터 시작하니까 4번째인 ContactBox는 3번 페이지
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: PageView(
            scrollDirection: Axis.vertical, // 기본은 horizontal
            controller: _pageController, // 연결!
            children: [
              MainTextBox(onContactTap: _goToContactPage),
              ImageBox(),
              ProjectBox(),
              ContactBox()
            ],
          )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MainTextBox extends StatelessWidget {

  final VoidCallback onContactTap;
  const MainTextBox({required this.onContactTap});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    var box = Container(
        width: width,
        height: height,
        child: Center(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    color: ColorTheme.mainColor_f7f2ea,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '안드로이드 개발자나,\n플러터 개발자를 찾고 계세요?',
                          style: TextStyle(
                              fontFamily: 'esamanru',
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: ColorTheme.mainColor_9c4b3b
                          ),
                        ),

                        const SizedBox(height: 40),

                        const Text(
                          '이 개발자와 함께 프로젝트, 해쳐나가볼까요?',
                          style: TextStyle(
                              fontFamily: 'esamanru',
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: ColorTheme.mainColor_9c4b3b
                          ),
                        ),

                        const SizedBox(height: 20),

                        InkWell(
                          onTap: () {
                            context.go('/about');
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.transparent, // 배경색
                              border: Border.all(
                                color: ColorTheme.mainColor_9c4b3b, // 테두리 색
                                width: 2,            // 테두리 두께
                              ),
                            ),

                            child: const Text(
                              'Contact Me!',
                              style: TextStyle(
                                  color: ColorTheme.mainColor_9c4b3b,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  )
              ),
              Expanded(
                  child: Container(
                    height: height,
                    padding: EdgeInsets.fromLTRB(70, 100, 70, 0) ,
                    color: ColorTheme.mainColor_eba594,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(500),
                        topRight: Radius.circular(500),
                      ),
                      child: Image.asset(
                        'assets/images/profile_image.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ),
            ],
          ),
        )
    );
    return box;
  }
}

class ImageBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    var box = SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        child: Image.asset(
          'assets/images/profile_background.jpeg',
          fit: BoxFit.cover,
        ),
      ),
    );

    return box;
  }
}

class ProjectBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    var box = Stack(
      children: [

        Container(
          width: width,
          height : height,
          color: ColorTheme.mainColor_eba594,
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Company and Project',
                style: TextStyle(
                    fontFamily: 'esamanru',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: ColorTheme.mainColor_f7f2ea
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: TimelineWidget(),
              ),
            ],
          ),
        ),

        Container(
          width: width,
          height : height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ColorTheme.mainColor_eba594.withOpacity(0), // 하단은 기존 배경색
                ColorTheme.mainColor_eba594 // 하단은 기존 배경색
              ],
            ),
          ),
        ),

        Container(
          width: width,
          height : height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '자세한 정보를 보고싶으신가요?',
                  style: TextStyle(
                      fontFamily: 'esamanru',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ColorTheme.mainColor_f7f2ea
                  ),
                ),

                const SizedBox(height: 14),

                InkWell(
                  onTap: () {
                    print("Route");
                  },

                  child: const Text(
                    '이동하기 >',
                    style: TextStyle(
                        fontFamily: 'esamanru',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorTheme.mainColor_f7f2ea
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );

    return box;

  }
}

class ContactBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    var box = Container(
      width: width,
      height: height,
      color: ColorTheme.mainColor_9c4b3b,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Contact Me',
            style: TextStyle(
                fontFamily: 'esamanru',
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: ColorTheme.mainColor_f7f2ea
            ),
          ),

          const SizedBox(height: 40),

          Linkify(
            onOpen: (link) async {
              final url = Uri.parse(link.url);
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                throw 'Could not launch $url';
              }
            },
            text: 'KakaoTalk : https://open.kakao.com/o/sNaPxoyh',
            style: const TextStyle(
                fontFamily: 'pretendard',
                fontSize: 20,
                color: ColorTheme.mainColor_f7f2ea
            ),
            linkStyle: const TextStyle(
              color: ColorTheme.mainColor_f7f2ea,
              decoration: TextDecoration.underline,
              decorationColor: ColorTheme.mainColor_f7f2ea,
            ),
          ),

          const Text(
            '(온라인 범죄 방지를 위해 휴대폰 번호를 따로 제공하고 있지 않습니다. 다른 창구를 통해 요청해주세요.)',
            style: TextStyle(
                fontFamily: 'pretendard',
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: ColorTheme.mainColor_f7f2ea
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Email : littlemary1370@gmail.com',
            style: TextStyle(
                fontFamily: 'pretendard',
                fontSize: 20,
                color: ColorTheme.mainColor_f7f2ea
            ),
          ),

          const SizedBox(height: 20),

          Linkify(
            onOpen: (link) async {
              final url = Uri.parse(link.url);
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                throw 'Could not launch $url';
              }
            },
            text: 'Github : https://github.com/littlemary1379',
            style: const TextStyle(
                fontFamily: 'pretendard',
                fontSize: 20,
                color: ColorTheme.mainColor_f7f2ea
            ),
            linkStyle: const TextStyle(
              color: ColorTheme.mainColor_f7f2ea,
              decoration: TextDecoration.underline,
              decorationColor: ColorTheme.mainColor_f7f2ea,
            ),
          ),
        ],
      ) ,
    );
    return box;
  }

}

class TimelineItem {
  final String year;
  final String description;

  TimelineItem(this.year, this.description);
}

class TimelineWidget extends StatelessWidget {

  final List<TimelineItem> items = [
    TimelineItem('2024.07 - ', 'Everex'),
    TimelineItem('2023.12 - 2024.05', '하렉스인포텍'),
    TimelineItem('2022.05 - 2023.11', '온앤오프 컴퍼니'),
    TimelineItem('2022.02 - 2022.05', '신성아이씨티'),
    TimelineItem('2020.09 - 2022.01', '주식회사 고운우리'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              Column(
                children: [
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: ColorTheme.mainColor_f7f2ea,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 2,
                    height: index == items.length - 1 ? 0 : 88,
                    color: ColorTheme.mainColor_f7f2ea,
                  ),
                ],
              ),

              const SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.year,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 4),
                    Text(item.description,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        )),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}