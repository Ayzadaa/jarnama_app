import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jarnama_app/components/custom_tex_field.dart';

class AppProductPage extends StatelessWidget {
  const AppProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _title = TextEditingController();
    final _descr = TextEditingController();
    final _dateTime = TextEditingController();
    final _phone = TextEditingController();
    final _userName = TextEditingController();
    final _address = TextEditingController();
    final _price = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppProductPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            CustomTextField(
              controller: _title,
              hinText: 'Title',
            ),
            const SizedBox(height: 12),
            CustomTextField(
              controller: _descr,
              hinText: 'Description',
            ),
            const SizedBox(height: 12),
            CustomTextField(
              controller: _dateTime,
              hinText: 'DateTime',
              onTap: () async {
                showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext builder) {
                      return Container(
                        height: MediaQuery.of(context).copyWith().size.height *
                            0.25,
                        color: Colors.white,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (value) {
                            _dateTime.text = value.toString();
                          },
                          initialDateTime: DateTime.now(),
                          minimumYear: 2000,
                          maximumYear: 3000,
                        ),
                      );
                    });
              },
            ),
            const SizedBox(height: 12),
            CustomTextField(
              controller: _phone,
              hinText: 'Phone Number',
            ),
            const SizedBox(height: 12),
            CustomTextField(
              controller: _userName,
              hinText: 'User Name',
            ),
            const SizedBox(height: 12),
            CustomTextField(
              controller: _address,
              hinText: 'Address',
            ),
            const SizedBox(height: 12),
            CustomTextField(
              controller: _price,
              hinText: 'Price',
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.publish),
              label: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
