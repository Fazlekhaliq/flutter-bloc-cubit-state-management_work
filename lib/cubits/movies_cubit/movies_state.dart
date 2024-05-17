part of 'movies_cubit.dart';

sealed class MoviesState {}

final class MoviesInitial extends MoviesState {}
final class MoviesLoading extends MoviesState{}
final class MoviesSuccessfully extends MoviesState{
  final List<Results>? moviesList;
  MoviesSuccessfully({required this.moviesList});

}
final class MoviesFailure extends MoviesState{}
