import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RegistrationButton extends StatefulWidget {
  @override
  State<RegistrationButton> createState() => _RegistrationButtonState();
}

class _RegistrationButtonState extends State<RegistrationButton> {
  bool _loading = false;
  bool _completed = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: _loading
          ? null
          : () {
              setState(() {
                _loading = true;
              });

              // Simulate a delay for the loading animation
              Future.delayed(Duration(seconds: 2), () {
                if (mounted) {
                  // Check if the widget is still in the tree
                  setState(() {
                    _loading = false;
                    _completed = true;
                  });
                }
              });
            },
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: _loading
            ? SizedBox(
                width: 12,
                height: 12,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : _completed
                ? Icon(
                    PhosphorIcons.check(),
                    key: ValueKey('completed'),
                  )
                : Icon(
                    PhosphorIcons.plus(),
                    key: ValueKey('initial'),
                  ),
      ),
    );
  }
}
