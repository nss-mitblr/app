import 'package:flutter/material.dart';

import 'package:nss/src/login/components/submit_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/institute.jpg',
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.75,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.75,
                color: Colors.black.withOpacity(0.3),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Use your Manipal Learner ID to get started',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
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
        ],
      ),
    );
  }
}
