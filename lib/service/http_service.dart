
import 'dart:convert';

import 'package:http/http.dart';
import 'package:apinew/model/emp_response.dart';

class Network{

  static String  BASE = "dummy.restapiexample.com";
  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  /*Http Apis*/
 static String API_LIST = "/posts";
  static String API_CREATE = "/posts";
  static String API_UPDATE = "/posts/"; // {id} will be appended in the method
  static String API_DELETE = "/posts/";//{id}

/* Http Requests*/
static Future<String?>GET(String api, Map<String, String >params)async{
  var uri = Uri.https(BASE, api, params);
  var response = await get(uri, headers: headers);
  if(response.statusCode ==200){
    return response.body;
  }
  return null;
}




/*Http Params*/
  static Map<String, String> parameEmpty() {
    return {};
  }


  /*Http Parsing*/
  static List<EmoResponse> parsingResponse(String response) {
    final json = jsonDecode(response);
    final data = List< EmoResponse>.from(json.map((mp) =>EmoResponse.fromJson(mp)));
    return data;

    /// returned  object is News

}
}






