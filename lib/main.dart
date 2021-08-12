import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crypto_app/blocs/crypto/crypto_bloc.dart';
import 'package:crypto_app/repositories/crypto_repository.dart';
import 'package:crypto_app/screens/home_screen.dart';

void main() {
  EquatableConfig.stringify = kDebugMode;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CryptoRepository(),
      child: MaterialApp(
        title: 'Crypto App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.tealAccent,
        ),
        home: BlocProvider(
          create: (context) => CryptoBloc(
            cryptoRepository: context.read<CryptoRepository>(),
          )..add(AppStarted()),
          child: HomeScreen(),
        ),
      ),
    );
  }
}
