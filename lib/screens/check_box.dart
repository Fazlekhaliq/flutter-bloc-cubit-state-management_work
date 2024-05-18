import 'package:blocwork/cubits/task_cubit/task_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<TaskCubit,bool>(builder: (context, state) {
            return Row(
              children: [
                Checkbox(value: state, onChanged: (value){
              BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

            }),
                Checkbox(value: state, onChanged: (value){
                  BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

                }),
                Checkbox(value: state, onChanged: (value){
                  BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

                }),
                Checkbox(value: state, onChanged: (value){
                  BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

                }),
                Checkbox(value: state, onChanged: (value){
                  BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

                }),

            Column(
            children: [
            Checkbox(value: state, onChanged: (value){
            BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

            }),
            Checkbox(value: state, onChanged: (value){
            BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

            }),
            Checkbox(value: state, onChanged: (value){
            BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

            }),
            Checkbox(value: state, onChanged: (value){
            BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

            }),
            Checkbox(value: state, onChanged: (value){
            BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

            }),
            Checkbox(value: state, onChanged: (value){
            BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

            }),
            Checkbox(value: state, onChanged: (value){
            BlocProvider.of<TaskCubit>(context).toggleCheckbox(value!);

            }),
            ],
            )
              ],
            );
            
          },)
        ],
      ),
    );
  }
}
