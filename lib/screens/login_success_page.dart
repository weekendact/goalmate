import 'package:flutter/material.dart';

class LoginSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인 성공'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '로그인에 성공했습니다!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 로그아웃 또는 다른 동작 수행
                Navigator.pop(context); // 현재 페이지 닫기
              },
              child: Text('로그아웃'),
            ),
          ],
        ),
      ),
    );
  }
}
