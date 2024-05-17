import 'package:bloc/bloc.dart';
import 'package:blocwork/repositiers/movies_repository.dart';

import '../../data/model/movies_model.dart';


part 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(MoviesInitial());

  Future<void> fetchMovies() async {
    try {
      emit(MoviesLoading());
      MoviesModel moviesModel = await MoviesRepository().getMovies();
      if (moviesModel != null) {
        emit(MoviesSuccessfully(moviesList: moviesModel.results));
      } else {
        emit(MoviesFailure());
      }
    } catch (e) {
      print(e);
      emit(MoviesFailure());
    }
  }
}