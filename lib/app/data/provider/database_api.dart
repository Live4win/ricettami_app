import 'package:dio/dio.dart';

typedef JSON = Map<String, dynamic>;

const DATABASE_BASE_URL =
    'https://ricettami-backend-ed76139bf37a.herokuapp.com';
//const DATABASE_BASE_URL = 'http://127.0.0.1:8000/';

class AppDatabase {
  static late Dio _client;

  static void init() {
    _client = Dio(BaseOptions(baseUrl: DATABASE_BASE_URL, headers: {
      'Access-Control-Allow-Origin': DATABASE_BASE_URL,
      'Access-Control-Allow-Methods': ['POST', 'GET', 'OPTIONS', 'DELETE'],
    }));
  }

  static Future<void> login(String username, String password) async {
    try {
      var response = await _client.post(
          'https://cors-anywhere.herokuapp.com/$DATABASE_BASE_URL/api/login',
          data: {'username': username, 'password': password});

      print(response.data);
    } catch (error) {
      print(error);
    }
  }

/*  DrfClient client = DrfClient();
  JSON? currentUser;

  void init() {
    // TODO: Implement init()

    client.addConfig(
        DATABASE_BASE_URL,
        DrfConfig(
          authType: AuthType.drfBuiltIn,
          baseUrl: 'https://$DATABASE_BASE_URL/api',
          tokenUrl: 'https://$DATABASE_BASE_URL/api/token',
          refreshTokenUrl: 'https://$DATABASE_BASE_URL/api/token/refresh',
          usernameField: 'username',
          passwordField: 'password',
          //refreshField: 'refresh_token',
        ));
  }

  Future<bool> login(String username, String password) async =>
      (await client.loginDrfBuiltIn(username, password)).isSuccess;

  Future<bool> logout() async {
    bool result = await client.logout();

    if (!await client.isLoggedIn()) return false;

    if (result) currentUser = null;

    return result;
  }

  Future<bool> register(
      {required String username, required String password}) async {
    DrfResponse result = await client
        .post('/api/register', {'username': username, 'password': password});

    return result.isSuccess;
  }
*/
  /*Future<JSON> getCurrentUser() async {}

  Future<List<JSON>> getPersonalCards() async {}

  Future<List<JSON>> getCommunityCards() async {}

  Future<List<JSON>> getAICards() async {}*/
}
