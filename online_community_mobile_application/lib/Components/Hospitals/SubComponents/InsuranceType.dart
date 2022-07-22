// ignore_for_file: file_names

class InsuranceType {
  late String insuranceID;
  late String insuranceType;
  InsuranceType({required insuranceID, required insuranceType});
}

var insuranceChoice = [
  InsuranceType(insuranceID: "Urgent", insuranceType: "Urgent"),
  InsuranceType(insuranceID: "Necessary", insuranceType: "Necessary"),
];