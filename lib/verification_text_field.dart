import 'package:animated_text_kit/animated_text_kit.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Enter',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10.0,
              ),
              AnimatedTextKit(
                  totalRepeatCount: 5,
                  stopPauseOnTap: true,
                  pause: const Duration(microseconds: 8000),
                  animatedTexts: [
                    RotateAnimatedText(
                      ' your',
                    ),
                    RotateAnimatedText(
                      ' Verification',
                    ),
                    RotateAnimatedText(
                      ' code',
                    )
                  ])
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SafeArea(
                child: PinCodeTextField(
                    appContext: context,
                    length: 6,
                    enabled: true,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.teal,
                    cursorHeight: 15.0,
                    obscureText: true,
                    blinkWhenObscuring: true,
                    blinkDuration: const Duration(microseconds: 800),
                    // enableActiveFill: true

                    pinTheme: PinTheme(
                        fieldHeight: 50,
                        fieldWidth: 40,
                        shape: PinCodeFieldShape.box,
                        activeFillColor: Colors.orange,
                        activeColor: Colors.orange,
                        selectedColor: Colors.teal,
                        inactiveColor: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    onChanged: (value) {})),
          ),
        ],
      ),
    );
  }
}
