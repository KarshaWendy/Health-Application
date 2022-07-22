// ignore_for_file: file_names

class GenderType {
  late String genderID;
  late String genderName;

  GenderType({required this.genderID, required this.genderName});
}

var genderChoice = [
  GenderType(genderID: "Male", genderName: "Male"),
  GenderType(genderID: "Female", genderName: "Female"),
  GenderType(genderID: "other", genderName: "Other"),
];
