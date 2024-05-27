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
                          padding:  const EdgeInsets.symmetric(horizontal: 22, vertical: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextField(
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                  constraints: BoxConstraints(maxWidth: 350),
                                  suffixIcon: Icon(Icons.email_outlined),
                                  border: OutlineInputBorder(),
                                  fillColor: Colors.black,
                                  label: Text(
                                    'Email', 
                                  ),
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
                              const SizedBox(height: 55),
                              ElevatedButton(
                                onPressed: disabledButton ? null : () { Routefly.navigate('/home'); },
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
