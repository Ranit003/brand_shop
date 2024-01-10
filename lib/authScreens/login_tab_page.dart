import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';


class LoginTabPage extends StatefulWidget {
  const LoginTabPage({Key? key}) : super(key: key);

  @override
  State<LoginTabPage> createState() => _LoginTabPageState();
}

class _LoginTabPageState extends State<LoginTabPage>
{
  TextEditingController emailTextEditigController=TextEditingController();
  TextEditingController passwordTextEditigController=TextEditingController();
  GlobalKey<FormState> Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                  "images/login.png",
              height: MediaQuery.of(context).size.width*0.60,
              ),
            ),


            Form(
              key: Formkey,
              child: Column(
                children: [


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


                  const SizedBox(height:10,),

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
                  "Login",
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
