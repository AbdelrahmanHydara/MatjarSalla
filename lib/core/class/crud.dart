import 'dart:convert';
import '../functions/check_internet.dart';
import 'status_request.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class Crud
{
  Future<Either<StatusRequest,Map>> postData({
    required String url,
    Map<String,dynamic>? data,
    // String? token,
}) async
  {
    if(await checkInternet())
    {
      var response = await http.post(
          Uri.parse(url),
          body: data,
          headers:
          {
            "lang" : "en",
            // "Content-Type" : "application/json",
            // "Authorization" : token??"",
          },
      );
      if (response.statusCode == 200 || response.statusCode == 201)
      {
        Map responseData = jsonDecode(response.body);
        return Right(responseData);
      } else
      {
        return const Left(StatusRequest.serverError);
      }
    } else
    {
      return const Left(StatusRequest.offline);
    }
  }

  Future<Either<StatusRequest,Map>> getData({
    required String url,
    Map<String,dynamic>? data,
    String? token,
  }) async
  {
    if(await checkInternet())
    {
      var response = await http.get(
        Uri.parse(url),
        headers:
        {
          "lang" : "en",
          "Content-Type" : "application/json",
          "Authorization" : token??"",
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201)
      {
        Map responseData = jsonDecode(response.body);
        return Right(responseData);
      } else
      {
        return const Left(StatusRequest.serverError);
      }
    } else
    {
      return const Left(StatusRequest.offline);
    }
  }

  Future<Either<StatusRequest,Map>> putData({
    required String url,
    Map<String,dynamic>? data,
    // String? token,
  }) async
  {
    if(await checkInternet())
    {
      var response = await http.put(
        Uri.parse(url),
        body: data,
        headers:
        {
          "lang" : "en",
          // "Content-Type" : "application/json",
          // "Authorization" : token??"",
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201)
      {
        Map responseData = jsonDecode(response.body);
        return Right(responseData);
      } else
      {
        return const Left(StatusRequest.serverError);
      }
    } else
    {
      return const Left(StatusRequest.offline);
    }
  }
}