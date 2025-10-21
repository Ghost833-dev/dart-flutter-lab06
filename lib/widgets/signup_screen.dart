import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                width: 200,
              ),
            ),

            SizedBox(height: 18.0),
            Center(
              child: Text(
                "Sign up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),

            SizedBox(height: 23.0),
            Text("Name:"),
            SizedBox(
              height: 48,
              child: TextField(decoration: customInputDecoration()),
            ),
            SizedBox(height: 13.0),
            Text("Email"),
            SizedBox(
              height: 48,
              child: TextField(decoration: customInputDecoration()),
            ),
            SizedBox(height: 13.0),
            Text("Password"),
            SizedBox(
              height: 48,
              child: TextField(decoration: customInputDecoration()),
            ),
            SizedBox(height: 20.0),

            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              title: Text("Message"),
                              content: Text("Need to implement"),
                            );
                          },
                        ),
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: customBlue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: const Text("Sign up"),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: OutlinedButton(
                      onPressed: () => {
                        Navigator.pop(context),
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1.5,
                        ),
                        foregroundColor: customBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: const Text("Back"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
