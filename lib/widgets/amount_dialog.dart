import 'package:flutter/material.dart';

class EditAmountDialog extends StatefulWidget {
  final double? initialValue;
  const EditAmountDialog({Key? key, this.initialValue = 0}) : super(key: key);

  @override
  State<EditAmountDialog> createState() => _EditAmountDialogState();
}

class _EditAmountDialogState extends State<EditAmountDialog> {
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController.fromValue(
        TextEditingValue(text: widget.initialValue.toString()));
  }

  submit() {}

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Edit amount"),
      content: TextFormField(
        controller: controller,
        onSaved: (newValue) {
          var result = double.tryParse(newValue!);
          if (result != null) {
            Navigator.pop(context, result);
          }
        },
        keyboardType:
            const TextInputType.numberWithOptions(signed: true, decimal: true),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            var result = double.tryParse(controller.text);
            if (result != null) {
              Navigator.pop(context, result);
            }
          },
          child: const Text("Done"),
        )
      ],
    );
  }
}
