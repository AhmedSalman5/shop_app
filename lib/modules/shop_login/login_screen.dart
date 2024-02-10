import 'package:flutter/material.dart';

class ShopLoginScreen extends StatelessWidget {
  ShopLoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LOGIN',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'login now to browse our hot offers',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if(value!.isEmpty){
                  return 'please enter your email address';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Email Address'),
                prefix: Icon(Icons.email_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
