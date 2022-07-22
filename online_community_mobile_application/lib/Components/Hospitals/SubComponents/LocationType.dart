// ignore_for_file: file_names

class LocationType {
  late String locationID;
  late String locationType;
  LocationType({required locationID, required locationType});
}

var locationChoice = [
  LocationType(locationID: "Urgent", locationType: "Urgent"),
  LocationType(locationID: "Necessary", locationType: "Necessary"),
];