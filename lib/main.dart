import 'package:blocwork/cubits/login_cubit/login_cubit.dart';
import 'package:blocwork/cubits/movies_cubit/movies_cubit.dart';
import 'package:blocwork/cubits/task_cubit/task_cubit.dart';
import 'package:blocwork/screens/check_box.dart';
import 'package:blocwork/screens/login_screen.dart';
import 'package:blocwork/screens/moveis_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>  MoviesCubit( )),
        BlocProvider(create: (context) =>  TaskCubit( )),
        BlocProvider(create: (context) => LoginCubit( )),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:LoginScreen(),
      ),
    );
  }
}
