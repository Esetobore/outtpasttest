import 'package:flutter/material.dart';

class MultiDigitInputView extends StatefulWidget {
  const MultiDigitInputView({super.key});

  @override
  _MultiDigitInputViewState createState() => _MultiDigitInputViewState();
}

class _MultiDigitInputViewState extends State<MultiDigitInputView> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;
  late final int _numberOfFields = 6; // Change this to the number of fields you want

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(_numberOfFields, (index) => FocusNode());
    _controllers = List.generate(
      _numberOfFields,
          (index) => TextEditingController(),
    );

    for (int i = 0; i < _numberOfFields; i++) {
      _focusNodes[i].addListener(() {
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _numberOfFields,
            (index) => Container(
          width: 40,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _focusNodes[index].hasFocus ? Colors.blue : Colors.grey,
                width: 2.0,
              ),
              top: BorderSide(
                color: _focusNodes[index].hasFocus ? Colors.blue : Colors.grey,
                width: 2.0,
              ),
              left: BorderSide(
                color: _focusNodes[index].hasFocus ? Colors.blue : Colors.grey,
                width: 2.0,
              ),
              right: BorderSide(
                color: _focusNodes[index].hasFocus ? Colors.blue : Colors.grey,
                width: 2.0,
              ),
            ),
          ),
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            onChanged: (value) {
              if (value.isNotEmpty) {
                // Move focus to the next field
                if (index < _numberOfFields - 1) {
                  FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                }
              }
            },
            decoration: const InputDecoration(
              counterText: '',
            ),
          ),
        ),
      ),
    );
  }
}