 import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper{
 static Dio? dio;
  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl:'https://retail.amit-learning.com/api/products' ,
        receiveDataWhenStatusError: true,

      ),
    );
  }
 static Future<Response?> getData({
   required String url,
   required Map<String,dynamic>query})
async{

   return await dio?.get(url,queryParameters:query);
  }
 }
 //https://retail.amit-learning.com/api/products