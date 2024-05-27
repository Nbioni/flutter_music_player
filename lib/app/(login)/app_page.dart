import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  String email = '';
  String senha = '';
  bool isPasswordVisible = false;
  String? emailError;

  bool _validateEmail(String email) {
    if (email.isEmpty) {
      setState(() {
        emailError = 'Email field cannot be empty';
      });
      return false;
    } else if (!EmailValidator.validate(email)) {
      setState(() {
        emailError = 'Please enter a valid email address';
      });
      return false;
    }
    // Add this line
    setState(() {
      emailError = null; // Clear error if validation passes
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isMobile = size.width < 768;
    bool isHeightSmall = size.height < 600;
    bool disabledButton = email.isEmpty || senha.isEmpty;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: isHeightSmall ? 12 : 60),
                  child: const Text(
                    'Flutter Music Player',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 850
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: isHeightSmall ? 60 : 150),
                  child: Center(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 650, 
                        maxHeight: isMobile ? double.infinity : 320,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.only( 
                          topLeft: const Radius.circular(40),
                          topRight: const Radius.circular(40),
                          bottomLeft: isMobile ? Radius.zero : const Radius.circular(40),
                          bottomRight: isMobile ? Radius.zero : const Radius.circular(40),
                        )
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding:  const EdgeInsets.all(22),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: isMobile ? 22 : 0),
                              const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 22),
                              TextField(
                                onChanged: (value) {
                                  _validateEmail(value);
                                  setState(() {
                                    email = value;
                                    emailError = null; // Clear error on change
                                  });
                                },
                                decoration: InputDecoration(
                                  constraints: const BoxConstraints(maxWidth: 350),
                                  suffixIcon: const Icon(Icons.email_outlined),
                                  border: const OutlineInputBorder(),
                                  fillColor: Colors.black,
                                  label: const Text(
                                    'Email', 
                                  ),
                                  errorText: emailError,
                                ),
                              ),
                              const SizedBox(height: 22),
                              TextField(
                                onChanged: (value) {
                                  setState(() {
                                    senha = value;
                                  });
                                },
                                obscureText: !isPasswordVisible,
                                decoration: InputDecoration(
                                  constraints: const BoxConstraints(maxWidth: 350),
                                  suffixIcon: IconButton(
                                    icon: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        isPasswordVisible = !isPasswordVisible;
                                      });
                                    },
                                  ),
                                  border: const OutlineInputBorder(),
                                  label: const Text(
                                    'Senha', 
                                  ),
                                ),
                              ),
                              const SizedBox(height: 35),
                              ElevatedButton(
                                onPressed: disabledButton ? null : () { 
                                  if (_validateEmail(email)) {
                                    Routefly.navigate('/home');
                                  }},
                                style: ButtonStyle(
                                  backgroundColor: disabledButton ? null : WidgetStateProperty.all(Theme.of(context).colorScheme.primaryContainer),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('ENTRAR', style: TextStyle(color: Colors.white),),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
