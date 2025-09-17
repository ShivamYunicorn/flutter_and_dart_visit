import 'package:flutter/material.dart';

class FullTextField extends StatefulWidget {
  const FullTextField({super.key});

  @override
  State<FullTextField> createState() => _FullTextFieldState();
}

class _FullTextFieldState extends State<FullTextField> {
  bool hidePassword = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty.';
    }

    // Example: Password must be at least 8 characters long
    if (value.length < 8) {
      return 'Password must be at least 8 characters long.';
    }

    // Example: Password must contain at least one uppercase letter
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter.';
    }

    // Example: Password must contain at least one lowercase letter
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter.';
    }

    // Example: Password must contain at least one digit
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one digit.';
    }

    // Example: Password must contain at least one special character
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one special character.';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text field Decoration"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // plain text field
                TextField(),

                SizedBox(height: 6),

                // textfield with hint and hint style
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 6),

                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),

                SizedBox(height: 6),

                TextField(
                  decoration: InputDecoration(
                    helperText: 'Input Helper!',
                    helperStyle: TextStyle(color: Colors.deepPurple),
                  ),
                ),

                SizedBox(height: 6),

                // prefix
                TextField(
                  decoration: InputDecoration(
                    prefixText: '+91 ',
                    prefixStyle: TextStyle(color: Colors.lightGreen),
                    hint: Text("Enter your number"),
                  ),
                ),

                SizedBox(height: 6),

                // suffix
                TextField(
                  decoration: InputDecoration(
                    suffixText: '@gmail.com',
                    suffixStyle: TextStyle(color: Colors.lightGreen),
                  ),
                ),

                SizedBox(height: 6),

                // Outline border with border style
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter rabbit number',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.amber,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.purpleAccent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                SizedBox(height: 6),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.amberAccent,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),

                SizedBox(height: 6),

                // icon
                TextField(
                  decoration: InputDecoration(icon: Icon(Icons.currency_rupee)),
                ),

                // prefix icon
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.currency_rupee),
                  ),
                ),

                SizedBox(height: 6),

                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),

                SizedBox(height: 100),

                TextFormField(
                  controller: _passwordController,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    hint: Text("Password"),
                    suffixIcon: IconButton(
                      icon: Icon(
                        hidePassword
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                      ),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
                  ),
                  validator: validatePassword,
                ),

                SizedBox(height: 100),

                // ElevatedButton(
                //   onPressed: () {
                //     if (_formKey.currentState!.validate()) {
                //       _formKey.currentState!.save();
                //     }
                //   },
                //   child: Text("Submit"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
