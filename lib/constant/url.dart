import 'package:http/http.dart' as http;

class BaseUrl {
  static String baseUrl = "https://fireapp.kahosting.my.id/api/";
  static String log = baseUrl + "log";
  static String board = baseUrl + "board";
  static String sensor = baseUrl + "sensor";
  static String login = baseUrl + "auth";
  static String image = "https://source.unsplash.com/600x600/?person";
}

class WA {
  // For help
  static String waUrl = "https://wa.me/";
  static String getHelp(String number, String message) {
    return waUrl + number + "/?text=${Uri.parse(message)}";
  }
}

class API {
  static Future getBoardDetail($id) {
    return http.get(Uri.parse(BaseUrl.board + "/" + $id));
  }

  static Map<String, String>? headers = {
    "Accept": "application/json",
    "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
  };

  static Uri login = Uri.parse(BaseUrl.login);
  static Uri board = Uri.parse(BaseUrl.board);
}