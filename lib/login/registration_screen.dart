// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     title: 'Navigation Basics',
//     home: FirstRoute(),
//   ));
// }
//
// class FirstRoute extends StatelessWidget {
//   const FirstRoute({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Open route'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const SecondRoute()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class SecondRoute extends StatefulWidget {
//   const SecondRoute({Key? key}) : super(key: key);
//
//   @override
//   _SecondRouteState createState() => _SecondRouteState();
// }
//
// class _SecondRouteState extends State<SecondRoute> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _contactController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();
//
//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _contactController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         title: const Text('Second Route'),
//     ),
//     body: Form(
//     key: _formKey,
//     child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     TextFormField(
//     controller: _nameController,
//     decoration: const InputDecoration(
//     labelText: 'Full Name',
//     border: OutlineInputBorder(),
//     ),
//     validator: (value) {
//     if (value == null || value.isEmpty) {
//     return 'Please enter your full name';
//     }
//     return null;
//     },
//     ),
//     const SizedBox(height: 16.0),
//     TextFormField(
//     controller: _emailController,
//     keyboardType: TextInputType.emailAddress,
//     decoration: const InputDecoration(
//     labelText: 'Email Address',
//     border: OutlineInputBorder(),
//     ),
//     validator: (value) {
//     if (value == null || value.isEmpty) {
//     return 'Please enter your email address';
//     } else if (!value.contains('@')) {
//     return 'Please enter a valid email address';
//     }
//     return null;
//     },
//     ),
//     const SizedBox(height: 16.0),
//     TextFormField(
//     controller: _contactController,
//     keyboardType: TextInputType.phone,
//     decoration: const InputDecoration(
//     labelText: 'Contact Number',
//     border: OutlineInputBorder(),
//     ),
//     validator: (value) {
//     if (value == null || value.isEmpty) {
//     return 'Please enter your contact number';
//     } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
//     return 'Please enter a valid 10-digit contact number';
//     }
//     return null;
//     },
//     ),
//     const SizedBox(height: 16.0),
//     TextFormField(
//     controller: _passwordController,
//     obscureText: true,
//     decoration: const InputDecoration(
//     labelText: 'Create Password',
//     border: OutlineInputBorder(),
//     ),
//     validator: (value) {
//     if (value == null || value.isEmpty) {
//     return 'Please enter a password';
//     } else if (value.length < 6) {
//     return 'Password must be at least 6 characters long';
//     }
//     return null;
//     },
//     ),
//     ],
//     ),
//     )
//     );
//
//     }
// }