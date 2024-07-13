import 'package:flutter/material.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:nss/components/loading_icon.dart';

class SubmitButton extends StatefulWidget {
  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
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
                      builder: (context) => LoadingIcon(),
                    ),
                  ),
                },
              );
            },
      icon: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: const Icon(PhosphorIconsFill.microsoftOutlookLogo),
      ),
      label: _loading
          ? const Text(
              'Loading...',
              style: TextStyle(fontSize: 16),
            )
          : const Text(
              'Login with Outlook',
              style: TextStyle(fontSize: 16),
            ),
    );
  }
}
