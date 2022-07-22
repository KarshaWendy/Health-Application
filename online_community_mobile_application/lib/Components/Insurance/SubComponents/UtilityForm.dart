// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, avoid_print, deprecated_member_use

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/SpecialityType.dart';

import 'Benefits.dart';
import 'CoverPeriod.dart';

class UtilityForm extends StatefulWidget {
  @override
  _UtilityFormState createState() => _UtilityFormState();
}

class _UtilityFormState extends State<UtilityForm> {
  final GlobalKey<FormState> _utilityFormKey = GlobalKey<FormState>();
  late TextEditingController _memberController;
  late TextEditingController _coverperiodController;
  late TextEditingController _benefitsController;

  @override
  void initState() {
    _memberController = TextEditingController(text: "");
    _coverperiodController = TextEditingController(text: "");
    _benefitsController = TextEditingController(text: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _utilityFormKey,
      child: Column(
        children: [
           Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: DropdownSearch<SpecialityType>(
                  searchFieldProps: TextFieldProps(
                    controller: _memberController,
                  ),
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Member';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Member:',
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
                  hint: "Member",
                  onChanged: (value) {
                   _memberController.text =
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
                child: DropdownSearch<CoverPeriod>(
                  searchFieldProps: TextFieldProps(
                    controller: _coverperiodController,
                  ),
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Please Enter Cover Period';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Cover Period:',
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
                  items: CoverPeriodChoice,
                  //itemAsString: (locationType u) => u.locationPlanType,
                  hint: "Cover Period",
                  onChanged: (value) {
                    _benefitsController.text =
                        value!.coverperiodID.toString();
                    print(value.coverperiodID);
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
                    if (instance!.coverperiodType.contains(filter!)) {
                      print(filter);
                      return true;
                    } else {
                      return false;
                    }
                  },
                  popupItemBuilder:
                      (context, CoverPeriod item, bool isSelected) {
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
                        child: Text(item.coverperiodType),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: DropdownSearch<BenefitsType>(
                  searchFieldProps: TextFieldProps(
                    controller: _benefitsController,
                  ),
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Please Enter Benefit Type';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Benefits:',
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
                  items: BenefitsChoice,
                  //itemAsString: (locationType u) => u.locationPlanType,
                  hint: "Benefits",
                  onChanged: (value) {
                    _benefitsController.text =
                        value!.benefitsID.toString();
                    print(value.benefitsID);
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
                    if (instance!.benefitsType.contains(filter!)) {
                      print(filter);
                      return true;
                    } else {
                      return false;
                    }
                  },
                  popupItemBuilder:
                      (context, BenefitsType item, bool isSelected) {
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
                        child: Text(item.benefitsType),
                      ),
                    );
                  },
                ),
              ),
        ],
      ),
    );
  }
}
