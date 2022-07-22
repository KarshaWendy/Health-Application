// ignore_for_file: file_names

class BenefitsType {
  late String benefitsID;
  late String benefitsType;

  BenefitsType({required this.benefitsID, required this.benefitsType});
}

var benefitsChoice = [
  BenefitsType(
      benefitsID: 'Outpatient Benefits', benefitsType: 'outpatient benefits'),
  BenefitsType(
      benefitsID: 'Inpatient Benefits', benefitsType: 'inpatient benefits')
];
