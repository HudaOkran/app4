import 'package:flutter/material.dart';
import 'package:flutter_a8/main.dart';

class beso extends StatelessWidget {
   beso({super.key});
   final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
   late String _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text fild from"),
      ),
      body: Form(
        key: _formKey,
        child: Column(

        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'enter your name',
            ),
            validator: (value){
              if(value!.trim().isEmpty){
                return'please enter your name.';
              }
              return null; 
              },
              onSaved:(value){
                _name=value!;

              },),
          
              ElevatedButton(
                child: const Text('submit'),
                onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print('Name:$_name');
                  }
                },
              ),
        ],
        ),),);}}
           