class LoginData {

  late final String accessToken;

  LoginData.fromJson(Map<String, dynamic> json){
    accessToken = json['access_token'];
  }
}