// ignore_for_file: file_names, non_constant_identifier_names

class BenefitsType {
  late String benefitsID;
  late String benefitsType;
  BenefitsType({required benefitsID, required benefitsType});
}

var BenefitsChoice = [
  BenefitsType(benefitsID: "Urgent", benefitsType: "Urgent"),
  BenefitsType(benefitsID: "Necessary", benefitsType: "Necessary"),
];