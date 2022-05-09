import 'package:dio/dio.dart';
import 'package:get/get.dart' as GET;
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';


class Api{
  static final dio= Dio(
   BaseOptions(
     baseUrl: '10.0.2.2/bms/home',
     receiveDataWhenStatusError: true,

   ),
  );

  static void initializeInterceptors(){
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (request , handler) async{
        var token = await GetStorage().read('login_token');
        var headers ={
          'Accept': 'application/json',
          'Content-type': 'application/json',
          'Authorization': 'bearer ${token}'
        };
        request.headers.addAll(headers);
        print(request.method) ;
        print(request.headers);
        return handler.next(request);


      },
      onResponse: (response , handler){
        print (response.data);
        return handler.next(response);
      },



    ),);

  }
}
