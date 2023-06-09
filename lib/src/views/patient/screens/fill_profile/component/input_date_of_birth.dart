import 'package:flutter/material.dart';

class InputAge extends StatefulWidget {
  const InputAge({
    Key? key,
    required this.dateInput,
  }) : super(key: key);

  final TextEditingController dateInput;

  @override
  State<InputAge> createState() => _InputAgeState();
}

class _InputAgeState extends State<InputAge> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.dateInput,
        readOnly: true,
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hintText: 'Date of birth',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          suffixIcon: const Icon(
            Icons.calendar_month,
            color: Colors.grey,
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Can not be empty';
          }
          return null;
        },
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime.now());
          if (pickedDate != null) {
            // String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
            setState(() {
              widget.dateInput.text = pickedDate.toString();
            });
          }
        },
      ),
    );
  }
}
