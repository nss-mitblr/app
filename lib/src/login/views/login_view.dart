import 'package:flutter/material.dart';

import 'package:nss/src/login/components/submit_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/institute.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 128,
                  ),
                ),
                SizedBox(height: 20),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Please login with your ',
                      ),
                      TextSpan(
                        text: 'Manipal Learner ID',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' to access the application.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: SubmitButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
