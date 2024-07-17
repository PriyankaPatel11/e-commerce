import 'package:e_commerce/utils/app_style.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text('SignUp ',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.bottombar),),
            SizedBox(height: 50,),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)),
                  hintText: 'Enter your Username',
                  label: Text('Username')
                  ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)),
                  hintText: 'Enter your Email',
                  label: Text('Email')
                  ),
            ),
            SizedBox(height: 10,),
              TextField(
                
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)),
                  hintText: 'Enter your Password',
                  label: Text('Password')
                  ),
            ),
            
            
            SizedBox(height: 10,),
            Row(
              
              children: [
                Text('Already have an account'),
                // SizedBox(width: 5,),
                TextButton(onPressed: (){}, child: Text('Login', style: TextStyle(color: Colors.green ),)),
                
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 6, 43, 73),)),
              onPressed: (){}, 
              child: Text('SignUp', style: TextStyle(
                backgroundColor: AppColors.bottombar,
                color: Colors.white),
                ),
              ),

          ],
        ),
      ),
    );
  
  }
}