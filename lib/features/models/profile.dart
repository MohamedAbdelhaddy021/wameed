class ProfileData {

  late final int id;
  late final String name;
  late final String email;
  late final String birthDay;
  late final String gender;
  late final int creditNumber;
  late final int vodafoneCash;
  late final String createdAt;
  late final String updatedAt;

  ProfileData.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    birthDay = json['birth_day'];
    gender = json['gender'];
    creditNumber = json['credit_number'];
    vodafoneCash = json['vodafone_cash'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

}