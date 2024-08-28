import 'package:flutter/material.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:nss/src/navigation/views/navigation_view.dart';

class SubmitButton extends StatefulWidget {
  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: _loading
          ? null
          : () {
              setState(() {
                _loading = !_loading;
              });

              Future.delayed(Duration(seconds: 3)).then(
                (value) => {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => NavigationView(),
                    ),
                  ),
                },
              );
            },
      style: FilledButton.styleFrom(
        backgroundColor: Color(0xFF2D2F8C),
        padding: EdgeInsets.symmetric(vertical: 15),
        iconColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      icon: _loading
          ? null
          : const Padding(
              padding: EdgeInsets.only(right: 4.0),
              child: Icon(
                PhosphorIconsFill.microsoftOutlookLogo,
                color: Colors.white,
              ),
            ),
      label: _loading
          ? const Text(
              'Loading...',
              style: TextStyle(fontSize: 16),
            )
          : const Text(
              'Login with Outlook',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
    );
  }
}
