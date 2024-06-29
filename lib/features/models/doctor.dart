import 'package:flutter/material.dart';

class DoctorDetails {
  String name, qualifications;
  double price;
  AssetImage img;

  DoctorDetails({
    required this.name,
    required this.qualifications,
    required this.price,
    required this.img,
  });
}

List<Map<String, dynamic>> docList = [
  {
    "Name": "Ahmed Hassan",
    "Price": 300,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 12
  },
  {
    "Name": "Nour Ibrahim",
    "Price": 250,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 8
  },
  {
    "Name": "Sara Mahmoud",
    "Price": 350,
    "Qualification": "Psychiatrist",
    "Years of Experience": 15
  },
  {
    "Name": "Mohamed Ali",
    "Price": 200,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 10
  },
  {
    "Name": "Aya Ahmed",
    "Price": 280,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 6
  },
  {
    "Name": "Mahmoud Khalil",
    "Price": 320,
    "Qualification": "Licensed Clinical Social Worker",
    "Years of Experience": 14
  },
  {
    "Name": "Yara Mansour",
    "Price": 270,
    "Qualification": "Psychiatric Nurse Practitioner",
    "Years of Experience": 9
  },
  {
    "Name": "Omar Abdelaziz",
    "Price": 230,
    "Qualification": "Child Psychologist",
    "Years of Experience": 7
  },
  {
    "Name": "Salma Hassan",
    "Price": 280,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 11
  },
  {
    "Name": "Mariam Ahmed",
    "Price": 250,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 7
  },
  {
    "Name": "Khaled Mahmoud",
    "Price": 400,
    "Qualification": "Psychiatrist",
    "Years of Experience": 18
  },
  {
    "Name": "Nada Ali",
    "Price": 180,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 9
  },
  {
    "Name": "Amr Ibrahim",
    "Price": 320,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 5
  },
  {
    "Name": "Rania Khalid",
    "Price": 290,
    "Qualification": "Licensed Clinical Social Worker",
    "Years of Experience": 13
  },
  {
    "Name": "Ahmed Mansour",
    "Price": 260,
    "Qualification": "Psychiatric Nurse Practitioner",
    "Years of Experience": 8
  },
  {
    "Name": "Hana Abdelrahim",
    "Price": 210,
    "Qualification": "Child Psychologist",
    "Years of Experience": 6
  },
  {
    "Name": "Yasmin Hassan",
    "Price": 290,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 10
  },
  {
    "Name": "Kareem Salah",
    "Price": 240,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 6
  },
  {
    "Name": "Dina Hamdi",
    "Price": 350,
    "Qualification": "Psychiatrist",
    "Years of Experience": 17
  },
  {
    "Name": "Ali Mahmoud",
    "Price": 190,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 8
  },
  {
    "Name": "Fatma Abdelrahman",
    "Price": 270,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 13
  },
  {
    "Name": "Ahmed Samir",
    "Price": 320,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 9
  },
  {
    "Name": "Hoda Mostafa",
    "Price": 280,
    "Qualification": "Psychiatrist",
    "Years of Experience": 16
  },
  {
    "Name": "Samar Abdelaziz",
    "Price": 230,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 7
  },
  {
    "Name": "Mahmoud Ali",
    "Price": 260,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 10
  },
  {
    "Name": "Amira Hassan",
    "Price": 220,
    "Qualification": "Licensed Clinical Social Worker",
    "Years of Experience": 8
  },
  {
    "Name": "Tarek Ibrahim",
    "Price": 270,
    "Qualification": "Psychiatric Nurse Practitioner",
    "Years of Experience": 7
  },
  {
    "Name": "Salwa Ahmed",
    "Price": 200,
    "Qualification": "Child Psychologist",
    "Years of Experience": 5
  },
  {
    "Name": "Youssef Khalid",
    "Price": 280,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 9
  },
  {
    "Name": "Layla Salah",
    "Price": 240,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 5
  },
  {
    "Name": "Ahmed Abdelrahman",
    "Price": 370,
    "Qualification": "Psychiatrist",
    "Years of Experience": 14
  },
  {
    "Name": "Reham Samir",
    "Price": 190,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 6
  },
  {
    "Name": "Hesham Mostafa",
    "Price": 310,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 12
  },
  {
    "Name": "Mariam Ali",
    "Price": 280,
    "Qualification": "Licensed Clinical Social Worker",
    "Years of Experience": 9
  },
  {
    "Name": "Sherif Hassan",
    "Price": 270,
    "Qualification": "Psychiatric Nurse Practitioner",
    "Years of Experience": 6
  },
  {
    "Name": "Hana Abdelaziz",
    "Price": 220,
    "Qualification": "Child Psychologist",
    "Years of Experience": 4
  },
  {
    "Name": "Yara Khalid",
    "Price": 290,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 8
  },
  {
    "Name": "Ahmed Sami",
    "Price": 230,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 4
  },
  {
    "Name": "Amira Hossam",
    "Price": 360,
    "Qualification": "Psychiatrist",
    "Years of Experience": 13
  },
  {
    "Name": "Mahmoud Samir",
    "Price": 180,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 7
  },
  {
    "Name": "Rania Ibrahim",
    "Price": 330,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 11
  },
  {
    "Name": "Kareem Hassan",
    "Price": 250,
    "Qualification": "Licensed Clinical Social Worker",
    "Years of Experience": 8
  },
  {
    "Name": "Dina Tarek",
    "Price": 260,
    "Qualification": "Psychiatric Nurse Practitioner",
    "Years of Experience": 5
  },
  {
    "Name": "Kareem Ali",
    "Price": 220,
    "Qualification": "Child Psychologist",
    "Years of Experience": 3
  },
  {
    "Name": "Yasmin Hussein",
    "Price": 300,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 7
  },
  {
    "Name": "Nour Ibrahim",
    "Price": 240,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 5
  },
  {
    "Name": "Ahmed Youssef",
    "Price": 350,
    "Qualification": "Psychiatrist",
    "Years of Experience": 12
  },
  {
    "Name": "Salma Samir",
    "Price": 170,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 6
  },
  {
    "Name": "Mahmoud Hesham",
    "Price": 290,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 10
  }
];
