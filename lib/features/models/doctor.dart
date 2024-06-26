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
    "Name": "Dr. Ahmed Hassan",
    "Price": 300,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 12
  },
  {
    "Name": "Dr. Nour Ibrahim",
    "Price": 250,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 8
  },
  {
    "Name": "Dr. Sara Mahmoud",
    "Price": 350,
    "Qualification": "Psychiatrist",
    "Years of Experience": 15
  },
  {
    "Name": "Dr. Mohamed Ali",
    "Price": 200,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 10
  },
  {
    "Name": "Dr. Aya Ahmed",
    "Price": 280,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 6
  },
  {
    "Name": "Dr. Mahmoud Khalil",
    "Price": 320,
    "Qualification": "Licensed Clinical Social Worker",
    "Years of Experience": 14
  },
  {
    "Name": "Dr. Yara Mansour",
    "Price": 270,
    "Qualification": "Psychiatric Nurse Practitioner",
    "Years of Experience": 9
  },
  {
    "Name": "Dr. Omar Abdelaziz",
    "Price": 230,
    "Qualification": "Child Psychologist",
    "Years of Experience": 7
  },
  {
    "Name": "Dr. Salma Hassan",
    "Price": 280,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 11
  },
  {
    "Name": "Dr. Mariam Ahmed",
    "Price": 250,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 7
  },
  {
    "Name": "Dr. Khaled Mahmoud",
    "Price": 400,
    "Qualification": "Psychiatrist",
    "Years of Experience": 18
  },
  {
    "Name": "Dr. Nada Ali",
    "Price": 180,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 9
  },
  {
    "Name": "Dr. Amr Ibrahim",
    "Price": 320,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 5
  },
  {
    "Name": "Dr. Rania Khalid",
    "Price": 290,
    "Qualification": "Licensed Clinical Social Worker",
    "Years of Experience": 13
  },
  {
    "Name": "Dr. Ahmed Mansour",
    "Price": 260,
    "Qualification": "Psychiatric Nurse Practitioner",
    "Years of Experience": 8
  },
  {
    "Name": "Dr. Hana Abdelrahim",
    "Price": 210,
    "Qualification": "Child Psychologist",
    "Years of Experience": 6
  },
  {
    "Name": "Dr. Yasmin Hassan",
    "Price": 290,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 10
  },
  {
    "Name": "Dr. Kareem Salah",
    "Price": 240,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 6
  },
  {
    "Name": "Dr. Dina Hamdi",
    "Price": 350,
    "Qualification": "Psychiatrist",
    "Years of Experience": 17
  },
  {
    "Name": "Dr. Ali Mahmoud",
    "Price": 190,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 8
  },
  {
    "Name": "Dr. Fatma Abdelrahman",
    "Price": 270,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 13
  },
  {
    "Name": "Dr. Ahmed Samir",
    "Price": 320,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 9
  },
  {
    "Name": "Dr. Hoda Mostafa",
    "Price": 280,
    "Qualification": "Psychiatrist",
    "Years of Experience": 16
  },
  {
    "Name": "Dr. Samar Abdelaziz",
    "Price": 230,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 7
  },
  {
    "Name": "Dr. Mahmoud Ali",
    "Price": 260,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 10
  },
  {
    "Name": "Dr. Amira Hassan",
    "Price": 220,
    "Qualification": "Licensed Clinical Social Worker",
    "Years of Experience": 8
  },
  {
    "Name": "Dr. Tarek Ibrahim",
    "Price": 270,
    "Qualification": "Psychiatric Nurse Practitioner",
    "Years of Experience": 7
  },
  {
    "Name": "Dr. Salwa Ahmed",
    "Price": 200,
    "Qualification": "Child Psychologist",
    "Years of Experience": 5
  },
  {
    "Name": "Dr. Youssef Khalid",
    "Price": 280,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 9
  },
  {
    "Name": "Dr. Layla Salah",
    "Price": 240,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 5
  },
  {
    "Name": "Dr. Ahmed Abdelrahman",
    "Price": 370,
    "Qualification": "Psychiatrist",
    "Years of Experience": 14
  },
  {
    "Name": "Dr. Reham Samir",
    "Price": 190,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 6
  },
  {
    "Name": "Dr. Hesham Mostafa",
    "Price": 310,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 12
  },
  {
    "Name": "Dr. Mariam Ali",
    "Price": 280,
    "Qualification": "Licensed Clinical Social Worker",
    "Years of Experience": 9
  },
  {
    "Name": "Dr. Sherif Hassan",
    "Price": 270,
    "Qualification": "Psychiatric Nurse Practitioner",
    "Years of Experience": 6
  },
  {
    "Name": "Dr. Hana Abdelaziz",
    "Price": 220,
    "Qualification": "Child Psychologist",
    "Years of Experience": 4
  },
  {
    "Name": "Dr. Yara Khalid",
    "Price": 290,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 8
  },
  {
    "Name": "Dr. Ahmed Sami",
    "Price": 230,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 4
  },
  {
    "Name": "Dr. Amira Hossam",
    "Price": 360,
    "Qualification": "Psychiatrist",
    "Years of Experience": 13
  },
  {
    "Name": "Dr. Mahmoud Samir",
    "Price": 180,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 7
  },
  {
    "Name": "Dr. Rania Ibrahim",
    "Price": 330,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 11
  },
  {
    "Name": "Dr. Kareem Hassan",
    "Price": 250,
    "Qualification": "Licensed Clinical Social Worker",
    "Years of Experience": 8
  },
  {
    "Name": "Dr. Dina Tarek",
    "Price": 260,
    "Qualification": "Psychiatric Nurse Practitioner",
    "Years of Experience": 5
  },
  {
    "Name": "Dr. Kareem Ali",
    "Price": 220,
    "Qualification": "Child Psychologist",
    "Years of Experience": 3
  },
  {
    "Name": "Dr. Yasmin Hussein",
    "Price": 300,
    "Qualification": "Clinical Psychologist",
    "Years of Experience": 7
  },
  {
    "Name": "Dr. Nour Ibrahim",
    "Price": 240,
    "Qualification": "Licensed Professional Counselor",
    "Years of Experience": 5
  },
  {
    "Name": "Dr. Ahmed Youssef",
    "Price": 350,
    "Qualification": "Psychiatrist",
    "Years of Experience": 12
  },
  {
    "Name": "Dr. Salma Samir",
    "Price": 170,
    "Qualification": "Counseling Psychologist",
    "Years of Experience": 6
  },
  {
    "Name": "Dr. Mahmoud Hesham",
    "Price": 290,
    "Qualification": "Marriage and Family Therapist",
    "Years of Experience": 10
  }
];
