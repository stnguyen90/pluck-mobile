import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const gap = SizedBox(height: 16);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenSize.height / 4,
          horizontal: 32.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Sign In',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            ),
            gap,
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email address',
              ),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            gap,
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
              controller: _passwordController,
            ),
            gap,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    print(
                        '${_emailController.value.text}//${_passwordController.value.text}');
                  },
                  child: const Text('No account? Register!'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(
                        '${_emailController.value.text}//${_passwordController.value.text}');
                  },
                  child: const Text('Sign In'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
