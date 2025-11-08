import 'package:flutter/material.dart';
import 'data/mock_users.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const ScuridApplianceDemo());
}

class ScuridApplianceDemo extends StatelessWidget {
  const ScuridApplianceDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scurid Appliance Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: HomePage(users: mockUsers),
    );
  }
}
