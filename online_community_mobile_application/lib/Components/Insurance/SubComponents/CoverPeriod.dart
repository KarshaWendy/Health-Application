// ignore_for_file: file_names, non_constant_identifier_names

class CoverPeriod {
  late String coverperiodID;
  late String coverperiodType;
  CoverPeriod({required coverperiodID, required coverperiodType});
}

var CoverPeriodChoice = [
  CoverPeriod(coverperiodID: "Urgent", coverperiodType: "Urgent"),
  CoverPeriod(coverperiodID: "Necessary",coverperiodType: "Necessary"),
];