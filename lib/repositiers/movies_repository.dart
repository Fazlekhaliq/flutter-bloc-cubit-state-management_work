import 'package:blocwork/Networking/networking.dart';
import 'package:blocwork/utils/constant.dart';

import '../data/model/movies_model.dart';

class MoviesRepository{
  Future<MoviesModel> getMovies()async{
    NetworkingHelper networkingHelper= NetworkingHelper(moviesUrl);
    final moviesJsonResponse= await networkingHelper.getData();
    final moviesModel =MoviesModel.fromJson(moviesJsonResponse);
    return moviesModel;

  }
}