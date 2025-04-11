import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feedbackpage extends StatelessWidget {
  const Feedbackpage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('Feedback')),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Form(
                autovalidateMode: AutovalidateMode.always,
                onChanged: () {
                  Form.maybeOf(primaryFocus!.context!)?.save();
                },
                child: CupertinoFormSection.insetGrouped(
                  header: const Text('Bus Details'),
                  children: [
                    CupertinoFormRow(
                      prefix: const Text(
                        'Bus Number',
                        style: TextStyle(
                            fontFamily: 'sfpro', fontWeight: FontWeight.bold),
                      ),
                      child: CupertinoTextFormFieldRow(
                        placeholder: 'Enter bus number',
                        onSaved: (value) {
                          print(value);
                        },
                      ),
                    ),
                    CupertinoFormRow(
                      prefix: const Text('Bus Route',
                          style: TextStyle(
                              fontFamily: 'sfpro',
                              fontWeight: FontWeight.bold)),
                      child: CupertinoTextFormFieldRow(
                        placeholder: 'Enter bus route',
                        onSaved: (value) {
                          print(value);
                        },
                      ),
                    ),

                    CupertinoFormRow(
                      prefix: const Text('Relevant Date',
                          style: TextStyle(
                              fontFamily: 'sfpro',
                              fontWeight: FontWeight.bold)),
                      child: CupertinoTextFormFieldRow(
                        placeholder: 'Enter Relevant Date',
                        onSaved: (value) {
                          print(value);
                        },
                      ),
                    ),

                    CupertinoFormRow(
                      prefix: const Text('Bus Timing',
                          style: TextStyle(
                              fontFamily: 'sfpro',
                              fontWeight: FontWeight.bold)),
                      child: CupertinoTextFormFieldRow(
                        placeholder: 'Enter bus time',
                        onSaved: (value) {
                          print(value);
                        },
                      ),
                    ),
                    CupertinoFormRow(
                      prefix: const Text('Bus Start',
                          style: TextStyle(
                              fontFamily: 'sfpro',
                              fontWeight: FontWeight.bold)),
                      child: CupertinoTextFormFieldRow(
                        placeholder: 'Enter bus stop',
                        onSaved: (value) {
                          print(value);
                        },
                      ),
                    ),
                    CupertinoFormRow(
                      prefix: const Text('Bus Stop',
                          style: TextStyle(
                              fontFamily: 'sfpro',
                              fontWeight: FontWeight.bold)),
                      child: CupertinoTextFormFieldRow(
                        placeholder: 'Enter bus stop',
                        onSaved: (value) {
                          print(value);
                        },
                      ),
                    ),

                    // CupertinoButton(
                    //   color: Colors.amber,
                    //   child: const Text('Submit'),
                    //   onPressed: () {
                    //     Form.of(primaryFocus!.context!)?.save();
                    //   },
                    // ),
                  ],
                ),
              ),
              Form(
                autovalidateMode: AutovalidateMode.always,
                onChanged: () {
                  Form.maybeOf(primaryFocus!.context!)?.save();
                },
                child: CupertinoFormSection.insetGrouped(
                  header: const Text('Complaint'),
                  children: [
                    CupertinoFormRow(
                      prefix: const Text(
                        'Issue',
                        style: TextStyle(
                            fontFamily: 'sfpro', fontWeight: FontWeight.bold),
                      ),
                      child: CupertinoTextFormFieldRow(
                        placeholder: 'Enter complaint',
                        onSaved: (value) {
                          print(value);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              CupertinoButton(
                color: Colors.amber,
                onPressed: () {},
                disabledColor: CupertinoColors.systemFill,
                child: const Text(
                  'Give Your Feedback',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'sfpro'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
