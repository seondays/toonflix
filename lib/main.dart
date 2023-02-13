import 'package:flutter/material.dart';

void main() {
  // runApp은 위젯을 구동시켜서 사용자에게 보여준다. 즉 파라미터는 위젯 타입이어야 한다.
  runApp(App());
}

//App이라는 위젯을 정의한다. StatelessWidget을 상속하여 일반 클래스인 App가 위젯이 되었다.
class App extends StatelessWidget {
  // StatelessWidget은 내부에 build라는 메서드가 필수이다.
  @override
  Widget build(BuildContext context) {
    // return타입이 위젯이기 때문에 기초 바탕이 되는 위젯인 MaterialApp을 return한다 (MaterialApp은 구글 기반이다.)
    return MaterialApp(
      //위젯 내부의 속성들 중 필요한 것들을 사용한다.
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "hello, mark",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Welcome back!",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
