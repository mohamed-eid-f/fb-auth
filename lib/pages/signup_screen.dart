import 'package:fb_auth/widgets/app_button.dart';
import 'package:fb_auth/widgets/app_password_field.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
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
          const SizedBox(height: 8),
          AppPasswordField(
            label: "Confirm Password",
            controller: _confirmPasswordController,
          ),
          const SizedBox(height: 16),
          const AppButton(title: "Sign up"),
        ],
      ),
    );
  }
}
