import 'package:creatispace/pages/payment_setup/payment_stepper.dart';
import 'package:flutter/material.dart';

class PaymentSetupForm extends StatelessWidget {
  final List<Step> steps = [
    Step(
      title: Text("Step 1"),
      content: Text("Hello!"),
      isActive: true,
    ),
    Step(
      title: Text("Step 2"),
      content: Text("World!"),
      state: StepState.editing,
      isActive: true,
    ),
    Step(
      title: Text("Step 3"),
      content: Text("Hello World!"),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PaymentStepper(steps: steps);
  }
}
