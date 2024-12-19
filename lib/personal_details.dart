import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal/options.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  String gender = '';
  TextEditingController fullName = TextEditingController();
  TextEditingController fatherName = TextEditingController();
  TextEditingController dateofBirth = TextEditingController();
  TextEditingController birthPlace = TextEditingController();
  TextEditingController currentCity = TextEditingController();
  TextEditingController email = TextEditingController();
  Color emailBorderColor = Colors.grey.shade300;

  final _formkey = GlobalKey<FormState>();

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: Text(
            'Personal Details',
            style: TextStyle(fontSize: 18),
          ),
          centerTitle: true,
          leading: Container(
              decoration: BoxDecoration(
                color: Color(0xFFECF5FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  Center(child: Image.asset('assets/images/appBarMenu.png'))),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Stack(
                children: [
                  const Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  Positioned(
                    top: size.height * 0.001,
                    right: size.width * 0.008,
                    child: Container(
                      height: size.height * 0.015,
                      width: size.width * 0.033,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.5),
                          color: const Color(0xFFDBE4FF)),
                      child: Center(
                          child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: size.width * 0.023,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF0F3CC9)),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: Form(
              key: _formkey,
              child: Column(
                spacing: 10,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Full Name*',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    controller: fullName,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xFFC1272D), width: 1),
                        ),
                        hintText: 'Jhon Doe',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        )),
                    keyboardType: TextInputType.name,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Father’s Full Name*',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    controller: fatherName,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xFFC1272D), width: 1),
                        ),
                        hintText: 'Janne Cooper',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        )),
                    keyboardType: TextInputType.name,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Gender*',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Options(
                    option: (p0) => setState(() {
                      gender = p0;
                    }),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Date Of Birth*',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    controller: dateofBirth,
                    onChanged: (value) {
                      if (value.length == 2 || value.length == 5) {
                        dateofBirth.text = '$value/';
                        dateofBirth.selection = TextSelection.fromPosition(
                            TextPosition(offset: dateofBirth.text.length));
                      }
                      if (value.length <= 10 &&
                          RegExp(r'[^0-9/]').hasMatch(value)) {
                        dateofBirth.text =
                            value.replaceAll(RegExp(r'[^0-9/]'), '');
                        dateofBirth.selection = TextSelection.fromPosition(
                            TextPosition(offset: dateofBirth.text.length));
                      }
                      setState(() {});
                    },
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: '00/00/0000',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        floatingLabelStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        )),
                    keyboardType: TextInputType.datetime,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Birth Place*',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    controller: birthPlace,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xFFC1272D), width: 1),
                        ),
                        hintText: 'Kolkata',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        )),
                    keyboardType: TextInputType.name,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Current City*',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    controller: currentCity,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Color(0xFFC1272D), width: 1),
                        ),
                        hintText: 'Bengaluru',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        )),
                    keyboardType: TextInputType.name,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email*',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    controller: email,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'example@gmail.com',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFF0F3CC9), width: 2),
                        )),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {}
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0F3CC9),
                        fixedSize: Size(size.width * 0.4, size.height * 0.05),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
