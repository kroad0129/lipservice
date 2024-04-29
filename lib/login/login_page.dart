import 'package:flutter/material.dart';
import 'signup_page.dart';
import '../tab/tab_page.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(flex: 2), // 환영합니다! 위에 더 많은 공간을 만들기 위해
              Text(
                '환영합니다!',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 48),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '아이디 입력',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '비밀번호 입력',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // 로그인 버튼 눌렀을 때의 행동
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TabPage())
                  );
                },
                child: Text('로그인'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50), // 버튼 높이
                ),
              ),
              Spacer(), // 남은 공간을 균등하게 나눔
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage())
                  );
                },
                child: Text('회원가입'),
              ),
              Spacer(), // 하단 공간
            ],
          ),
        ),
      ),
    );
  }
}