// ignore_for_file: file_names, non_constant_identifier_names

class MemberType {
  late String memberID;
  late String memberType;
  MemberType({required memberID, required memberType});
}

var MemberChoice = [
  MemberType(memberID: "Urgent", memberType: "Urgent"),
  MemberType(memberID: "Necessary", memberType: "Necessary"),
];