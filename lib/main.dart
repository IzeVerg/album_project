import 'package:eclipse_tz/bloc/home_bloc.dart';
import 'package:eclipse_tz/domain/repository/repository.dart';
import 'package:eclipse_tz/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => HomeBloc(repository: Repository())
          ..add(const HomeEvent.getUserData())
          ..add(const HomeEvent.getAlbumData()),
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      );
}
