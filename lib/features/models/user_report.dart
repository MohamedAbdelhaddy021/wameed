class UserReport {
  final String doctorDiagnosis;
  final int? angry;
  final int? disgust;
  final int? fear;
  final int? happy;
  final int? sad;
  final int? surprise;
  final int? neutral;
  final String? aiAnalyze;

  UserReport({
    required this.doctorDiagnosis,
    required this.angry,
    required this.disgust,
    required this.fear,
    required this.happy,
    required this.sad,
    required this.surprise,
    required this.neutral,
    required this.aiAnalyze,
  });

  factory UserReport.fromJson(Map<String, dynamic> json) {
    return UserReport(
      doctorDiagnosis: json['Doctor Diagnosis'],
      angry: json['angry'],
      disgust: json['disgust'],
      fear: json['fear'],
      happy: json['happy'],
      sad: json['sad'],
      surprise: json['surprise'],
      neutral: json['neutral'],
      aiAnalyze: json['aiAnalyze'],
    );
  }
}
