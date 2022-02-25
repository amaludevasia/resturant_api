import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant_api/menu.dart';



class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  late String name,email,phone;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                   Image.network("data:image/jpeg;base64,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"),

                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"Full Name"),
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                    onSaved: (value){
                      name = value!;
                    },
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: password,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Password"),
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'Please a Enter Password';
                      }
                      return null;
                    },

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: confirmpassword,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Confirm Password"),
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'Please re-enter password';
                      }
                      print(password.text);

                      print(confirmpassword.text);

                      if(password.text!=confirmpassword.text){
                        return "Password does not match";
                      }

                      return null;
                    },

                  ),
                ),

                SizedBox(
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: (){

                      if(_formkey.currentState!.validate())
                      {
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>  menu()));

                        return;
                      }else{
                        print("UnSuccessfull");
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue,width: 2)
                    ),
                    textColor:Colors.white,child: Text("Submit"),

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





InputDecoration buildInputDecoration(IconData icons,String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    prefixIcon: Icon(icons),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
          color: Colors.green,
          width: 1.5
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
    enabledBorder:OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
  );
}