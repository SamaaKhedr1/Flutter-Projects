import 'package:chat_app/Pages/chat_page.dart';
import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../helper/show_snak_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});
  static String id= "Sign Up";

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String? email;

  String? password;

  bool isLoading = false;

  GlobalKey<FormState> formKey=GlobalKey();

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
                  child: const Text("Sign Up",
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
                  onChanged: (data)
                    {
                      password=data;
                    },
                    hintText: "Password"),
                const SizedBox(height: 25,),
                CustomButton (
                    onTap: () async {
                      if(formKey.currentState!.validate()) {
                        isLoading =true;
                        setState(() {

                        });
                        try {
                          await registerUser();
                          //showSnackBar(context, "The Register is success.");
                          Navigator.pushNamed(context, ChatPage.id);
                        }
                        on FirebaseAuthException catch (e) {
                          if (e.code == 'Weak-password') {
                            showSnackBar(context, "Weak password");
                          }
                          else if (e.code == 'email-already-in-use') {
                            showSnackBar(context,
                                "The account already exists for that email.");
                          }
                        }

                        catch (e) {
                          showSnackBar(context, "There was an error");
                        }
                        isLoading = false;
                        setState(() {

                        });
                      }
                    },
                    text: "Sign Up"),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account ?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Text("  login",
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

  Future<void> registerUser() async {
    //UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);

    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: email!,
    );
  }
}
