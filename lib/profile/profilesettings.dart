
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green,),
          onPressed: () {  },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text('Edit Profile', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2, blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0,10),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/jhonson.png"),
                        ),
                      ),
                    ),
                    Positioned(bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.green,
                          ),
                          child: Icon(Icons.edit, color: Colors.white,),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              buildTextField("Full Name", "Jhonson Velasco", false),
              buildTextField("Email", "jhonsonvelasco@gmail.com", false),
              buildTextField("Password", "***********", true),
              buildTextField("Location", "Blk 12, Lot 23 Tierra Benita", false),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: OutlinedButton(
                        onPressed: (){},
                        child: Text("Cancel", style: TextStyle(fontSize: 14, letterSpacing: 2.2, color: Colors.black),)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),

                    child: ElevatedButton(onPressed: (){},
                        child: Text(
                          "SAVE",
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.white
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField buildTextField(String labelText, String placeHolder, bool isPasswordTextField) {
    return TextField(
      obscureText: isPasswordTextField ? showPassword : false,
      decoration: InputDecoration(
        suffixIcon: isPasswordTextField ? IconButton(
          onPressed: (){
            setState(() {
              showPassword = !showPassword;
            });
          },
          icon: Icon(Icons.remove_red_eye, color: Colors.grey),
        ) : null ,
        contentPadding: EdgeInsets.only(bottom: 3),
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeHolder,
        hintStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
