import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
 LoginPage({super.key});

  void loginUser(){
    print(userNameController.text);
    print(passwordController.text);
    print('login success');
  }

final userNameController = TextEditingController();
final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                Text(
            'Let\'s sign you in', 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold, letterSpacing: 0.5
                ),
                ),
              Text(
                'Welcome back! \n You\'ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.blueGrey),
                ),
                Image.network('https://3009709.youcanlearnit.net/Alien_LIL_131338.png', height: 200,),
        
                TextField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    hintText: 'add your username',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder()
                  ),
                ),

                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'type your password',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder()
                  ),
                ),

                ElevatedButton(onPressed: loginUser,
                 child: Text('login', style:TextStyle(fontSize: 24,fontWeight: FontWeight.w300) ,)),
                GestureDetector(
                  onTap: (){
                    print('link clicked');
                  },
                  child: Column(
                    children: [
                      Text('find us on'),
                      Text('https://duellinksmeta.com'),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
      );
  }
}