import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';



class TaskCubit extends Cubit<bool> {
  TaskCubit() : super(false);
  toggleCheckbox(bool checkBoxValue) {
    emit(checkBoxValue);
  }
}
