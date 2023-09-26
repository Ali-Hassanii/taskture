import 'package:flutter/material.dart';
import 'screen/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AppLogic());
}

class AppLogic extends StatelessWidget {
  const AppLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Taskture: Organize your tasks",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
