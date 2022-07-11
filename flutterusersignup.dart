import 'package:flutter/material.dart';

void main() => runApp(const SignUpApp());

class SignUpApp extends StatelessWidget {
   const SignUpApp();

   @override
   Widget build(BuildContext context) {
      return MaterialApp(
        routes: {
          '/': (context) => const SignUpScreen(),
        },
      );
   } 

}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: const Center(
        child: SizedBox(
          width: 400,
          child: Card(
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }  
}

class SignUpForm extends StatefulWidget {
  const SignUpForm();

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

 class _SignUpFormState extends State<SignUpForm> {
    final _firstNameTextController = TextEditingController();
    final _lastNameTextController = TextEditingController();
    final _usernameTextController = TextEditingController();
    final _idNumberTextController = TextEditingController();
    final _phoneNumberTextController = TextEditingController();

    double _formProgress = 0;

    @override
    Widget build(BuildContext context) {
      return Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LinearProgressIndicator(value: _formProgress),
            Text('PPOVA Sign Up',style: Theme
            .of(context)
            .textTheme
            .headline4),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _firstNameTextController,
                decoration: const InputDecoration(hintText:'Your Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _lastNameTextController,
                decoration: const InputDecoration(hintText:'Surname'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _usernameTextController,
                decoration: const InputDecoration(hintText:'Middle Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _idNumberTextController,
                decoration: const InputDecoration(hintText:'RSA Identity Document '),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _phoneNumberTextController,
                decoration: const InputDecoration(hintText:'RSA Phone Number'),
              ),
            ),
             TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                return states.contains(MaterialState.disabled) ? null : Colors.white;
              }),
              backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                return states.contains(MaterialState.disabled) ? null : Colors.black;
              }),
            ),
            onPressed: null,
            child: const Text('Proceed'),
            ),
          ],
        ),
      );
    }

  }




