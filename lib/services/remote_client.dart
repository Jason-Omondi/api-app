import 'package:http/http.dart' as http;


const String baseUrl = 'https://631c37911b470e0e12fcdd0b.mockapi.io/api';
class BaseClient {
  //define client and define a global connection to the Backend Server
  var httpClient = http.Client();

  Future<dynamic> get(String api) async {
    
    //convert server url to uri inorder to send http request to the backend server
    //string api is the endpoint of the backend api service eg users/ database etc/
    var url = Uri.parse(baseUrl + api);
    var _headers = { //because server requires this information for authentication
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };
    
    var resp = await httpClient.get(url); //capture the response by server
    if (resp.statusCode == 200) {//check the status code of the body
      return resp.body;
    } else {
      //handle error
    }




  }

  Future<dynamic> post(String api) async{

  }

  Future<dynamic> put(String api) async{




  }

  Future<dynamic> delete(String api) async{




  }
}