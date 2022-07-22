// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_print, unnecessary_new, unnecessary_null_comparison, use_key_in_widget_constructors, must_call_super, file_names

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/GenderType.dart';
import 'package:online_community_mobile_app/Controllers/Utils/Validators.dart';
import 'AppointmentType.dart';

class AppointmentForm extends StatefulWidget {
  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {
  final GlobalKey<FormState> _appointmentFormKey = GlobalKey<FormState>();
  late TextEditingController _firstNameController;
  late TextEditingController _secondNameController;
  late TextEditingController _genderController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _appointmentTypeController;
  late TextEditingController _appointmentDateController;
  late TextEditingController _startTimeController;
  late TextEditingController _commentsController;

  @override
  void initState() {
    _firstNameController = new TextEditingController(text: "");
    _secondNameController = new TextEditingController(text: "");
    _genderController = new TextEditingController(text: "");
    _phoneNumberController = new TextEditingController(text: "");
    _appointmentTypeController = new TextEditingController(text: "");
    _appointmentDateController = new TextEditingController(text: "");
    _startTimeController = new TextEditingController(text: "");
    _commentsController = new TextEditingController(text: "");
  }

  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    const validateTime = Validators.timeValidator;
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.black.withOpacity(0),
      child: Form(
          key: _appointmentFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('The Aga khan Hospital',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF2BB9AD),
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Dr Fred Owyer',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 3, 8, 8),
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _firstNameController,
                  keyboardType: TextInputType.text,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.book,
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
                    hintText: "First Name:",
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
                  controller: _secondNameController,
                  keyboardType: TextInputType.text,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.book,
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
                    hintText: "Second Name:",
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
                child: DropdownSearch<GenderType>(
                  searchFieldProps: TextFieldProps(
                    controller: _genderController,
                  ),
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Please Enter Gender';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Gender:',
                    labelStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                    icon: const Icon(
                      Icons.person_rounded,
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
                    helperText: 'Enter Gender',
                    helperStyle:
                        TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                  ),
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  showSelectedItems: false,
                  items: genderChoice,
                  // itemAsString: (InsuranceType u) => u.insurancePlanType,
                  hint: "Sex",
                  onChanged: (value) {
                    _genderController.text = value!.genderID.toString();
                    print(value.genderID);
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
                    if (instance!.genderName.contains(filter!)) {
                      print(filter);
                      return true;
                    } else {
                      return false;
                    }
                  },
                  popupItemBuilder:
                      (context, GenderType item, bool isSelected) {
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
                        child: Text(item.genderName),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.phone,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.phone_rounded,
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
                    hintText: "Phone Number:",
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
                child: DropdownSearch<AppointmentType>(
                  searchFieldProps: TextFieldProps(
                    controller: _appointmentTypeController,
                  ),
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Please Enter Appointment Type';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Appointment Type:',
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
                    helperText: 'Enter Appointment',
                    helperStyle:
                        TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                  ),
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  showSelectedItems: false,
                  items: appointmentChoice,
                  // itemAsString: (InsuranceType u) => u.insurancePlanType,
                  hint: "Appointment",
                  onChanged: (value) {
                    _appointmentTypeController.text =
                        value!.appointmentID.toString();
                    print(value.appointmentID);
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
                    if (instance!.appointmentType.contains(filter!)) {
                      print(filter);
                      return true;
                    } else {
                      return false;
                    }
                  },
                  popupItemBuilder:
                      (context, AppointmentType item, bool isSelected) {
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
                        child: Text(item.appointmentType),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _appointmentDateController,
                  keyboardType: TextInputType.text,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.date_range_rounded,
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
                    hintText: "Appointment Date:",
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
                  controller: _startTimeController,
                  keyboardType: TextInputType.datetime,
                  validator: (value) => validateTime(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.timeline_rounded,
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
                    hintText: "Start Time:",
                    hintStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () async {
                    TimeOfDay time = TimeOfDay.now();
                    FocusScope.of(context).requestFocus(new FocusNode());

                    TimeOfDay? picked = await showTimePicker(
                        context: context, initialTime: time);
                    if (picked != null && picked != time) {
                      _startTimeController.text =
                          picked.toString(); // add this line.
                      setState(() {
                        time = picked;
                      });
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _commentsController,
                  keyboardType: TextInputType.text,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.text_fields_rounded,
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
                    hintText: "Comments:",
                    hintStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: ElevatedButton(
                  child: const Text(
                    "Book",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    if (_appointmentFormKey.currentState!.validate()) {
                      //userValidation();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF2BB9AD),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
