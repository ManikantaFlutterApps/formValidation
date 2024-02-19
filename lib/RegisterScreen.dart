import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: const Text("Registration")),
      body: Container(
        margin: const EdgeInsets.only(left: 20,right: 20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter First Name',label: Text("FirstName")),
                controller: firstNameController,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if(value!.isEmpty || value == null){
                    return "Please Enter First name";
                  }
                  return null;
                },
              ),
          
              const SizedBox(height: 15,),
          
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Mobile Number',label: Text("MobileNumber")),
                controller: mobileNumberController,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if(value!.isEmpty || value == null){
                    return "Please Enter MobileNumber";
                  }
                  return null;
                },
              ),
          
              const SizedBox(height: 15,),
          
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Email Address',label: Text("EmailAddress")),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if(value!.isEmpty || value == null){
                    return "Please Enter EmailAddress";
                  }
                  return null;
                },
              ),
          
              const SizedBox(height: 15,),
          
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Password',label: Text("Password")),
                controller: passwordController,
                keyboardType: TextInputType.text,
                obscureText: true,
                validator: (value) {
                  if(value!.isEmpty || value == null){
                    return "Please Enter Password";
                  }
                  return null;
                },
              ),
          
              const SizedBox(height: 20,),
          
              ElevatedButton(onPressed: (){
          
                if(formKey.currentState!.validate() == false) {


                }
          
              }, child: const Text('Register'))
            ],
          ),
        ),
      ),
    );
  }
}
