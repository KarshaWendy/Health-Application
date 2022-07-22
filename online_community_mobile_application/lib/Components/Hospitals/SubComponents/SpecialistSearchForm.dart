// ignore_for_file: prefer_const_constructors, unnecessary_new, must_call_super, use_key_in_widget_constructors, file_names, deprecated_member_use, avoid_print

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'HospitalName.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/HospitalName.dart';

class SpecialistSearchForm extends StatefulWidget {
  @override
  _SpecialistSearchFormState createState() => _SpecialistSearchFormState();
}

class _SpecialistSearchFormState extends State<SpecialistSearchForm> {
  final GlobalKey<FormState> _specialistSearchFormKey = GlobalKey<FormState>();
  late TextEditingController _specialityController;
  late TextEditingController _nameController;
  late TextEditingController _hospitalController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    _specialityController = new TextEditingController(text: "");
    _nameController = new TextEditingController(text: "");
    _hospitalController = new TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.black.withOpacity(0),
      child: Form(
        key: _specialistSearchFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text('Search for Specialist',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF2BB9AD),
                        fontWeight: FontWeight.w700)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _specialityController,
                keyboardType: TextInputType.text,
                // validator: (value) => emailValidator(value!),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                   //child: Image.asset('assets/icons/hospital-buildings.png')
                  icon: const Icon(
                    Icons.folder_special,
                    color: Color(0xFF2BB9AD),
                  ),
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
                  hintText: "Speciality:",
                  hintStyle: TextStyle(
                    color: Color(0xFF2BB9AD),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _nameController,
                keyboardType: TextInputType.text,
                // validator: (value) => emailValidator(value!),
                decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.white,
                  icon: const Icon(
                    Icons.person_add,
                    color: Color(0xFF2BB9AD),
                  ),
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
                  hintText: "Name:",
                  hintStyle: TextStyle(
                    color: Color(0xFF2BB9AD),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: DropdownSearch<HospitalName>(
                searchFieldProps: TextFieldProps(
                  controller: _hospitalController,
                ),
                validator: (value) {
                  // ignore: unrelated_type_equality_checks
                  if (value == null || value == '') {
                    return 'Please Enter Hospital';
                  }
                  return null;
                },
                dropdownSearchDecoration: InputDecoration(
                  labelText: 'Hospital:',
                  labelStyle: TextStyle(
                    color: Color(0xFF2BB9AD),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                  icon: const Icon(
                    Icons.local_hospital_rounded,
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
                  helperText: 'Pick a Hospital',
                  helperStyle:
                      TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                ),
                mode: Mode.DIALOG,
                showSearchBox: true,
                showSelectedItems: false,
                items: hospitalChoice,
                // itemAsString: (InsuranceType u) => u.insurancePlanType,
                hint: "Sex",
                onChanged: (value) {
                  _hospitalController.text = value!.hospitalID.toString();
                  print(value.hospitalID);
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
                  if (instance!.hospitalName.contains(filter!)) {
                    print(filter);
                    return true;
                  } else {
                    return false;
                  }
                },
                popupItemBuilder: (context, HospitalName item, bool isSelected) {
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
                      child: Text(item.hospitalName),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: ElevatedButton(
                child: const Text(
                  "Search",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (_specialistSearchFormKey.currentState!.validate()) {
                    //userValidation();
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF2BB9AD),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
