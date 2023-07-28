import 'package:crypto_app/repositories/crypto_repository.dart';
import 'package:crypto_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/crypto/crypto_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => CryptoBloc(
              cryptoRepository: context.read<CryptoRepository>(),
            )..add(AppStarted()),
            child: HomeScreen(),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0E1A32),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Image.asset("img/Logo.png"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Smart Crypto",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Image.asset(
                    "img/Waves.png",
                    scale: 0.89,
                  )
                ],
              ),
            )));
  }
}
