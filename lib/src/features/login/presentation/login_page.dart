import 'package:flutter/material.dart';
import 'package:learnfinanc_app/src/features/home/presentation/home_page.dart';


class LearnFinanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Learn Finance App'),
        ),
        body: Center(
          child: LoginModal(),
        ),
      ),
    );
  }
}

class InputCredenciais extends StatelessWidget {
  final TextEditingController? constructor;
  final String? credencial;

  const InputCredenciais({this.constructor, this.credencial});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: credencial,
        ),
        style: const TextStyle(fontSize: 24),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class LoginModal extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login(BuildContext context) {
    // Implement your login logic here
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Replace the following code with your actual login implementation
    if (username == 'admin' && password == 'password') {
      // Login successful, navigate to the home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(username: username),
        ),
      );
    } else {
      //Error Dialog
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          icon: const Icon(Icons.info),
          title: const Text('Login Error'),
          content: const Text('Incorrect username or password. Try again.'),
          actions: <Widget>[
            TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF00BA79)),
              ),
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: 'User',
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () => _login(context),
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
