class DoctorData {

  late final int id;
  late final String name;
  late final String email;
  late final String birthDay;
  late final String gender;
  late final int vodafoneCash;
  late final String workTime;
  late final String qualifications;
  late final int experiance;
  late final int price;
  late final String createdAt;

  DoctorData.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    birthDay = json['birth_day'];
    gender = json['gender'];
    vodafoneCash = json['vodafone_cash'];
    workTime = json['work_time'];
    qualifications = json['qualifications'];
    experiance = json['experiance'];
    price = json['price'];
    createdAt = json['created_at'];
  }

}