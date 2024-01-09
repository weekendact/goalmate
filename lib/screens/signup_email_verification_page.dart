import 'package:flutter/material.dart';
import 'package:goalmate/screens/signup_password_page.dart';

class SignupEmailVerificationPage extends StatelessWidget {
  final String name;
  final String age;
  final String email;

  SignupEmailVerificationPage({required this.name, required this.age, required this.email});

  // 이메일 인증 확인 로직을 추가

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이메일 인증 확인'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('이름: $name, 나이: $age, 이메일: $email'),
            // 이메일 인증 관련 UI 및 동작 추가
            ElevatedButton(
              onPressed: () {
                // 이메일 인증 확인 로직 구현 (여기에서 인증 여부 확인하는 코드를 추가해야 합니다.)
                // 인증이 완료되면 다음 페이지로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupPasswordPage(
                      name: name,
                      age: age,
                      email: email,
                    ),
                  ),
                );
              },
              child: Text('다음'),
            ),
          ],
        ),
      ),
    );
  }
}
