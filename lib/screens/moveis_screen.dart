import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/movies_cubit/movies_cubit.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  void initState() {
    super.initState();
    fetchMovie();
  }
  Future<void> fetchMovie() async {
    await BlocProvider.of<MoviesCubit>(context).fetchMovies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),

      ),
      body: Column(
        children: [
        Expanded(
          child: BlocBuilder<MoviesCubit, MoviesState>(
                    builder: (context, state){
          if(state is MoviesLoading){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is MoviesSuccessfully){
            final movies = state.moviesList;
            return ListView.builder(
              itemCount:  movies!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading:  Icon(Icons.movie_sharp,color: Colors.blue,),
                  title: Text(movies[index].originalLanguage!),
                  subtitle: Text(movies[index].overview!),
                  trailing: Text(movies[index].releaseDate!),
                );
              },);
          }
              if (state is MoviesFailure) {
              return const Center(
              child: Text('No internet connection'),
              );
              }
              return Container();
              },
          
          
                  ),
        )

        ],
      ),
    );
  }
}
