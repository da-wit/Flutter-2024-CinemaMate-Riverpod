// details of the movie by id or name?
import 'package:cinema_mate/domain/crudMovie/update_movie/update_failure.dart';
import 'package:cinema_mate/domain/movie/movie.dart';
import 'package:cinema_mate/domain/movie/movieFailure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class IMovieRepository {
  Stream<Either<MovieFailure, KtList<MovieInfo>>> watchAll();
  Future<Either<UpdateFailure, Unit>> editMovie(EditMovie movie);
  Future<Either<MovieFailure, Unit>> deleteMovie(MovieInfo movie);
}
