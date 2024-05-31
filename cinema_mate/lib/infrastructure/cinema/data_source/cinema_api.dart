import 'dart:convert';

import 'package:cinema_mate/domain/auth/user/auth_failure.dart';
import 'package:cinema_mate/domain/auth/user/user_token.dart';
import 'package:cinema_mate/infrastructure/cinema/cinema_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class CinemaApiImplementations {
  final http.Client client;
  final String baseUrl = dotenv.get('BASE_URL');

  CinemaApiImplementations({required this.client});

  // List Cinemas
  Stream<Either<AuthFailure, List<CinemaDto>>> fetchAllCinemas(
      UserToken userToken) async* {
    final getCinemaMoviesUrl = Uri.parse('$baseUrl/cinemas/findCinemas');
    try {
      final http.Response response = await client.get(
        getCinemaMoviesUrl,
        headers: <String, String>{
          'Authorization': 'Bearer ${userToken.token}',
        },
      );

      print(response);
      if (response.statusCode == 200) {
        List<dynamic> jsonList = jsonDecode(response.body);
        List<CinemaDto> cinemas =
            jsonList.map((json) => CinemaDto.fromJson(json)).toList();
        yield right(cinemas);
      } else {
        yield left(const AuthFailure.serverError());
      }
    } catch (e) {
      yield left(const AuthFailure.serverError());
    }
  }

  // Check if cinema has uploaded an image
  Future<Either<AuthFailure, bool>> checkCinemaImage(
      UserToken cinemaToken) async {
    final checkCinemaImageUrl = Uri.parse('$baseUrl/cinemas/hasImage');
    try {
      final http.Response response = await client.get(
        checkCinemaImageUrl,
        headers: <String, String>{
          'Authorization': 'Bearer ${cinemaToken.token}',
        },
      );

      print(response);
      if (response.statusCode == 200) {
        return right(true);
      } else {
        return right(false);
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
  // get cinema details

  // upload cinema image
  Future<Either<AuthFailure, Unit>> uploadImage(
      String imagePath, UserToken cinemaToken) async {
    var uri = Uri.parse('$baseUrl/cinemas/image');
    var request = http.MultipartRequest('POST', uri);

    // Add JWT token in headers
    request.headers['Authorization'] = 'Bearer ${cinemaToken.token}';

    var file = await http.MultipartFile.fromPath('file', imagePath);
    request.files.add(file);

    try {
      final response = await request.send();
      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}