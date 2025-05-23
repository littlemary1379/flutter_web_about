import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_about/theme/color_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainTextBox()
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MainTextBox extends StatelessWidget {
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
                        print('버튼 눌림');
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
                      'assets/images/sample.png',
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
