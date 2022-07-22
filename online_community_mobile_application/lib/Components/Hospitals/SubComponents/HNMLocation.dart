// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, avoid_print, deprecated_member_use

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/LocationReport.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/SpecialityType.dart';
import 'InsuranceType.dart';
import 'SpecialityType.dart';
import 'LocationType.dart';

class HNMLocation extends StatefulWidget {
  @override
  _HNMLocationState createState() => _HNMLocationState();
}

class _HNMLocationState extends State<HNMLocation> {
  final GlobalKey<FormState> _locationFormKey = GlobalKey<FormState>();
  late TextEditingController _insuranceController;
  late TextEditingController _specialityController;
  late TextEditingController _locationController;

  @override
  void initState() {
    _insuranceController = TextEditingController(text: "");
    _specialityController = TextEditingController(text: "");
    _locationController = TextEditingController(text: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _locationFormKey,
      child: Column(
        children: [
           Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: DropdownSearch<SpecialityType>(
                  searchFieldProps: TextFieldProps(
                    controller: _specialityController,
                  ),
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Please Enter Specialty';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Specialty:',
                    labelStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                    icon: const Icon(
                      Icons.healing_rounded,
                      color: Color(0xFF2BB9AD),
                    ),
                    fillColor: Color(0xFFF9FDFF),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // helperText: 'Enter specialty',
                    // helperStyle:
                    //     TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                  ),
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  showSelectedItems: false,
                  items: specialityChoice,
                  //itemAsString: (specialityType u) => u.specialityPlanType,
                  hint: "Speciality",
                  onChanged: (value) {
                    _specialityController.text =
                        value!.specialityID.toString();
                    print(value.specialityID);
                  },
                  showClearButton: true,
                  clearButtonBuilder: (_) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.clear,
                      size: 24,
                      color: Color(0xFF2BB9AD),
                    ),
                  ),
                  dropdownButtonBuilder: (_) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.arrow_drop_down,
                      size: 24,
                      color: Color(0xFF2BB9AD),
                    ),
                  ),
                  filterFn: (instance, filter) {
                    if (instance!.specialityType.contains(filter!)) {
                      print(filter);
                      return true;
                    } else {
                      return false;
                    }
                  },
                  popupItemBuilder:
                      (context, SpecialityType item, bool isSelected) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: !isSelected
                          ? null
                          : BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item.specialityType),
                      ),
                    );
                  },
                ),
              ),
         Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: DropdownSearch<InsuranceType>(
                  searchFieldProps: TextFieldProps(
                    controller: _insuranceController,
                  ),
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Please Enter Insurance';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Insurance:',
                    labelStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                    icon: const Icon(
                      Icons.savings_rounded,
                      color: Color(0xFF2BB9AD),
                    ),
                    fillColor: Color(0xFFF9FDFF),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // helperText: 'Enter location',
                    // helperStyle:
                    //     TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                  ),
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  showSelectedItems: false,
                  items: insuranceChoice,
                  //itemAsString: (locationType u) => u.locationPlanType,
                  hint: "Location",
                  onChanged: (value) {
                    _locationController.text =
                        value!.insuranceID.toString();
                    print(value.insuranceID);
                  },
                  showClearButton: true,
                  clearButtonBuilder: (_) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.clear,
                      size: 24,
                      color: Color(0xFF2BB9AD),
                    ),
                  ),
                  dropdownButtonBuilder: (_) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: const Icon(
                      Icons.arrow_drop_down,
                      size: 24,
                      color: Color(0xFF2BB9AD),
                    ),
                  ),
                  filterFn: (instance, filter) {
                    if (instance!.insuranceType.contains(filter!)) {
                      print(filter);
                      return true;
                    } else {
                      return false;
                    }
                  },
                  popupItemBuilder:
                      (context, InsuranceType item, bool isSelected) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: !isSelected
                          ? null
                          : BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item.insuranceType),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: DropdownSearch<LocationType>(
                  searchFieldProps: TextFieldProps(
                    controller: _locationController,
                  ),
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Please Enter Location';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Location:',
                    labelStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                    icon: const Icon(
                      Icons.pin_drop_rounded,
                      color: Color(0xFF2BB9AD),
                    ),
                    fillColor: Color(0xFFF9FDFF),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // helperText: 'Enter location',
                    // helperStyle:
                    //     TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                  ),
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  showSelectedItems: false,
                  items: locationChoice,
                  //itemAsString: (locationType u) => u.locationPlanType,
                  hint: "Location",
                  onChanged: (value) {
                    _locationController.text =
                        value!.locationID.toString();
                    print(value.locationID);
                  },
                  showClearButton: true,
                  clearButtonBuilder: (_) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.clear,
                      size: 24,
                      color: Color(0xFF2BB9AD),
                    ),
                  ),
                  dropdownButtonBuilder: (_) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: const Icon(
                      Icons.arrow_drop_down,
                      size: 24,
                      color: Color(0xFF2BB9AD),
                    ),
                  ),
                  filterFn: (instance, filter) {
                    if (instance!.locationType.contains(filter!)) {
                      print(filter);
                      return true;
                    } else {
                      return false;
                    }
                  },
                  popupItemBuilder:
                      (context, LocationType item, bool isSelected) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: !isSelected
                          ? null
                          : BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item.locationType),
                      ),
                    );
                  },
                ),
              ),
          LocationReport()
        ],
      ),
    );
  }
}
