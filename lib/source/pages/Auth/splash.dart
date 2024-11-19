part of '../index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void movePage() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushNamedAndRemoveUntil(context, loginScreen, (route) => false);
  }

  @override
  void initState() {
    super.initState();
    movePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
