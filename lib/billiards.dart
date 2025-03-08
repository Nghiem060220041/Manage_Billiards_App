import 'package:flutter/material.dart';

void main() {
  runApp(BilliardsApp());
}

class BilliardsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quản lý quán Billiards',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quản lý quán Billiards')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuButton(title: 'Quản lý bàn chơi', route: '/manage-tables'),
            MenuButton(title: 'Tính giờ bàn chơi', route: '/track-time'),
            MenuButton(title: 'Dịch vụ', route: '/services'),
            MenuButton(title: 'Thanh toán', route: '/payment'),
            MenuButton(title: 'Thống kê & báo cáo', route: '/reports'),
            MenuButton(title: 'Quản lý kho', route: '/inventory'),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final String route;

  MenuButton({required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceholderScreen(title: title)));
        },
        child: Text(title),
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String title;

  PlaceholderScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Chức năng "$title" đang phát triển.')),
    );
  }
}
