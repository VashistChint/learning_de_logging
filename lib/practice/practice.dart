// import 'package:flutter/material.dart';
// import 'package:learning_de_logging/app_colors.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   final _formKey = GlobalKey<FormState>();
//   String _email = '';
//   String _password = '';
//
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: AppColors.backColor,
//       body: SizedBox(
//         height: height,
//         width: width,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Container(
//                 height: height,
//                 color: AppColors.mainDeepPurpleColor,
//                 child: Center(
//                   child: Text(
//                     'deepByte',
//                     style: TextStyle(
//                       fontSize: 48.0,
//                       color: AppColors.whiteColor,
//                       fontWeight: FontWeight.w800,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(width: null),
//             Expanded(
//               child: Container(
//                 height: height,
//                 color: AppColors.backColor,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children:[
//                     SizedBox(height:height*0.145),
//                     Form(
//                       key: _formKey,
//                       child: Column(
//                         children: [
//                           TextFormField(
//                             keyboardType: TextInputType.emailAddress,
//                             decoration: InputDecoration(
//                               labelText: 'Email Address',
//                               hintText: 'Enter your email address',
//                               border: OutlineInputBorder(),
//                             ),
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your email address';
//                               }
//                               return null;
//                             },
//                             onChanged: (value) {
//                               _email = value;
//                             },
//                           ),
//                           SizedBox(height: 20),
//                           TextFormField(
//                             obscureText: true,
//                             decoration: InputDecoration(
//                               labelText: 'Password',
//                               hintText: 'Enter your password',
//                               border: const OutlineInputBorder(),
//                             ),
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your password';
//                               }
//                               return null;
//                             },
//                             onChanged: (value) {
//                               _password = value;
//                             },
//                           ),
//                           SizedBox(height: 20),
//                           SizedBox(
//                             width: double.infinity,
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 if (_formKey.currentState!.validate()) {
//                                   // Perform sign in action
//                                   print('Email: $_email, Password: $_password');
//                                 }
//                               },
//                               child: const Text('Sign In'),
//                             ),
//                           ),
//                           SizedBox(height: 20),
//                           SizedBox(
//                             width: double.infinity,
//                             child: ConstrainedBox(
//                               constraints: BoxConstraints(
//                                 minWidth: 100,
//                               ),
//                               child: ElevatedButton(
//                                 onPressed: () {
//                                   // Perform sign in with Google action
//                                   print('Sign In with Google');
//                                 },
//                                 child: const Text('Sign In with Google'),
//                               ),
//                             ),
//                           ),
//
//                           SizedBox(height: 20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                         const Text(
//                         "Don't have an account? ",
//                         style: TextStyle(fontSize: 16),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           // Navigate to the signup screen
//                           print('Navigate to SignUp Screen');
//                         },
//                         child: const Text(
//                           'SignUp',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: AppColors.mainDeepPurpleColor,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       )  ],
//                       ),
//                     ]
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }