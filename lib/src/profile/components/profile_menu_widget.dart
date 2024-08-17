import 'package:flutter/material.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onTap: onPressed,
        leading: Container(
          width: 40,
          height: 40,
          child: Icon(icon),
        ),
        title: Text(title,
            style:
                Theme.of(context).textTheme.bodyLarge?.apply(color: textColor)),
        trailing: endIcon
            ? Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Icon(PhosphorIcons.arrowRight(PhosphorIconsStyle.bold),
                    size: 18.0, color: Colors.grey))
            : null,
      ),
    );
  }
}
