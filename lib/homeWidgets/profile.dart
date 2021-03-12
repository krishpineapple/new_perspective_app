
import 'package:new_perspective_app/authenticationWidgets/demographicQuestion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_perspective_app/services/auth.dart';


class ProfilePage extends StatelessWidget {
  final AuthService _authService = new AuthService();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("On Profile Page");


    return Scaffold(
        body: new Stack(
          children: [
            Expanded(
              child: (
                DemographicWidget()
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    icon: Icon(Icons.navigate_before),
                  ),
                ),
              ],
            ),
            
            
          ],
        ),
      );
  }
}
