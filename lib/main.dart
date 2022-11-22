import 'package:assignment/repo/data_repository.dart';
import 'package:assignment/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DataRepository()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Assignment',
        home: HomeScreen(),
      ),
    );
  }
}
