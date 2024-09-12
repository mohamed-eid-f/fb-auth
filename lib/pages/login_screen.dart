import 'package:fb_auth/widgets/app_button.dart';
import 'package:fb_auth/widgets/app_password_field.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomTextField(
            controller: _emailController,
            label: 'Email',
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 8),
          AppPasswordField(
            label: "Password",
            controller: _passwordController,
          ),
          const SizedBox(height: 16),
          const AppButton(title: "Login"),
        ],
      ),
    );
  }
}
