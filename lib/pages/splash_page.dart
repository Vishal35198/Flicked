import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final VoidCallback onIntializationComplete;
  const SplashPage({super.key, required this.onIntializationComplete});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1))
        .then((_) => widget.onIntializationComplete);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flick",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(''), fit: BoxFit.contain)),
        ),
      ),
    );
  }
}
