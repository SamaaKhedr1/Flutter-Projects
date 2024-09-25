import 'package:chat_app/Pages/chat_page.dart';
import 'package:chat_app/Pages/sign_up_page.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/helper/show_snak_bar.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String id= "Login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;

  String? password;

  GlobalKey<FormState>formKey=GlobalKey();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const SizedBox(height: 75,),
                //const Spacer(flex: 1,),
                Image.asset("assets/images/scholar.png",
                height: 100,),
                const Center(
                  child: Text("Scholar Chat",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: 'pacifico',
                    ),
                    ),
                ),
                const SizedBox(height: 75,),
                //const Spacer(flex: 1,),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text("Sign In",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                CustomFormTextField(
                  onChanged: (data)
                    {
                      email=data;
                    },
                    hintText: "Email"),
                const SizedBox(height: 10,),
                CustomFormTextField(
                  obscureText: true,
                  onChanged: (data)
                    {
                      password=data;
                    },
                    hintText: "Password"),
                const SizedBox(height: 25,),
                CustomButton(
                  onTap: () async{
                    if(formKey.currentState!.validate()) {
                      isLoading =true;
                      setState(() {

                      });
                      try {
                        await loginUser();
                        showSnackBar(context, "Success");
                        Navigator.pushNamed(
                            context,
                            ChatPage.id ,
                            arguments: email);
                      }
                      on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showSnackBar(context,
                              "No user found for that email.");
                        }
                        else if (e.code == 'wrong-password') {
                          //print("password is wrong");
                          showSnackBar(context,
                              "Wrong password provided for that user.");
                        }
                      }

                      catch (e) {
                        showSnackBar(context, "There was an error");
                      }
                      isLoading = false;
                      setState(() {

                      });
                    }


                    /*  if(formKey.currentState!.validate())
                      {
                        isLoading=true;
                        setState(() {
                        });
                        try {
                          await loginUser();
                          //showSnackBar(context, "The Log in is success.");
                          Navigator.pushNamed(context, ChatPage.id);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            showSnackBar(context, "'No user found for that email.'");
                          } else if (e.code == 'wrong-password') {
                            showSnackBar(context, "Wrong password provided for that user.");
                          }
                        }
                        catch (e) {
                          showSnackBar(context, "There was an error");
                        }
                        isLoading = false;
                        setState(() {

                        });
                      }  */
                    },
                    text: "Sign In"),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("don't have an account ?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                    GestureDetector(
                      onTap: (){
                       Navigator.pushNamed(context, SignUpPage.id);
                                },

                      child: const Text("  Sign Up",
                        style: TextStyle(
                          color: Color(0xffC7EDE6),
                        ),
                      ),
                    ),
                  ],
                ),
                //const Spacer(flex: 2,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email!, password: password!);
  }
}
