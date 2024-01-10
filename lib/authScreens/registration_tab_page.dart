//import 'dart:html';

import 'package:brand_shop/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';


class RegistrationTabPage extends StatefulWidget {
  const RegistrationTabPage({Key? key}) : super(key: key);

  @override
  State<RegistrationTabPage> createState() => _RegistrationTabPageState();
}

class _RegistrationTabPageState extends State<RegistrationTabPage>
{
  TextEditingController nameTextEditigController=TextEditingController();
  TextEditingController emailTextEditigController=TextEditingController();
  TextEditingController passwordTextEditigController=TextEditingController();
  TextEditingController confirmPasswordTextEditigController=TextEditingController();
  GlobalKey<FormState> Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [

            //get capture image
            const SizedBox(height: 12,),

            GestureDetector(
              onTap: (){

              },
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.20,
                child: Icon(
                  Icons.add_photo_alternate,
                  color: Colors.grey,
                  size: MediaQuery.of(context).size.width*0.20,
                ),
              ),
            ),


           const SizedBox(height: 12,),
            //input form fields


            Form(
          key: Formkey,
          child: Column(
            children: [

             CustomTextFiled(
            textEditingController: nameTextEditigController,
            iconData: Icons.person,
            hinttext: "Name",
            isObsecre: false,
            enabled: true,
          ),

          //emial

              CustomTextFiled(
            textEditingController: emailTextEditigController,
            iconData: Icons.email,
            hinttext: "Email",
            isObsecre: false,
            enabled: true,
          ),

          //password

              CustomTextFiled(
            textEditingController: passwordTextEditigController,
            iconData: Icons.lock,
            hinttext: "Password",
            isObsecre: true,
            enabled: true,
          ),

          //confirm password

              CustomTextFiled(
            textEditingController: confirmPasswordTextEditigController,
            iconData: Icons.lock,
            hinttext: "Confirm Password",
            isObsecre: true,
            enabled: true,
          ),

              const SizedBox(height: 20,),

          ],
          ),

        ),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(horizontal: 50,vertical: 12)
              ),
                onPressed: ()
                {

                },
                child: Text(
                  "Sign up",
                      style:TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                )

            ),

            const SizedBox(height: 20,)
          ],

        ),

      ),

    );

  }
}
