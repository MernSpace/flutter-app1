import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterFragment extends StatefulWidget{
  const RegisterFragment({super.key});
  @override
  State<RegisterFragment> createState()=>_RegisterPageState();
}

class _RegisterPageState extends State<RegisterFragment> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final  _formKey = GlobalKey<FormState>();
  bool _isPassword = true;
  void _register(){
    if(_formKey.currentState!.validate()){
      final name = _nameController.text.trim();
      final email =_emailController.text.trim();
      final phone = _phoneController.text.trim();
      final password = _passwordController.text.trim();
      print({name,email,phone,password});
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Register an account"),),
        body:  SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Register an account."),
                      SizedBox(height: 10,),
                      Text("Join to learn and grow!"),
                      SizedBox(height: 10,),
                      TextFormField(
                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Name",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value){
                          if(value== null || value.isEmpty){
                            return "Name is required";
                          }
                          return null;
                        },
                      ),


                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hello")
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}