import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


const String baseUrl = 'https://631c37911b470e0e12fcdd0b.mockapi.io/api'; //domain
//bool isLoading = true;

class BaseClient {
  //define client and define global connection to the Backend Server
  var httpClient = http.Client();

 //bool isLoading = true;
  Future<dynamic> get(String api) async  {
    
    //convert server url to uri inorder to send http request to the backend server
    //string api is the endpoint of the backend api service eg users/ database etc/
    var url = Uri.parse(baseUrl + api);
    var headers = { //because server requires this information for authentication
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };
    
    var resp = await httpClient.get(url, headers: headers); //capture the response by server
    if (resp.statusCode == 200) {//check the status code of the body
      //isLoading = false;
      /*Fluttertoast.showToast(
          msg: "Get request Succsessful.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 10,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      */
      return resp.body;
      
      
    } else {
      //handle error
      /*
Fluttertoast.showToast(
          msg: "Get request Failed.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 10,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
    */
    }      }

    Future<dynamic> post(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'Content-Type': 'application/json',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var response = await httpClient.post(url, body: _payload, headers: _headers);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      //throw exception and catch it in UI
    }
  }

  Future<dynamic> put(String api) async{




  }

  Future<dynamic> delete(String api) async{




  }
}