import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verification Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
            child: Center(
          child: PinCodeTextField(
              appContext: context,
              length: 6,
              enabled: true,
              keyboardType: TextInputType.number,
              hintCharacter: '0',
              cursorColor: Colors.teal,
              cursorHeight: 15.0,
              // enableActiveFill: true

              pinTheme: PinTheme(
                  fieldHeight: 50,
                  fieldWidth: 40,
                  shape: PinCodeFieldShape.box,
                  activeFillColor: Colors.orange,
                  activeColor: Colors.teal,
                  selectedColor: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10)),
              onChanged: (value) {}),
        )),
      ),
    );
  }
}
