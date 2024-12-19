import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  final Function(String) option;
  const Options({super.key, required this.option});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  bool isTapped = false;
  String selectedOption = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = 'MALE';
              widget.option('MALE');
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: selectedOption == 'MALE'
                    ? Color(0xFF0F3CC9).withOpacity(0.2)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Color(0xFF0F3CC9), width: 1)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Text(
                'MALE',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = 'FEMALE';
              widget.option('FEMALE');
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: selectedOption == 'FEMALE'
                    ? Color(0xFF0F3CC9).withOpacity(0.2)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Color(0xFF0F3CC9), width: 1)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Text(
                'FEMALE',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        )
      ],
    );
  }
}
