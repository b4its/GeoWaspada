import 'package:flutter/material.dart';
import 'package:geowaspada/pages/dashboard.dart';
import 'package:geowaspada/pages/authenticate/login.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pnumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[300],
        image: DecorationImage(
          image: const AssetImage("assets/ikn-background.png"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(myColor.withOpacity(0.3), BlendMode.dstATop),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Positioned(top: 70, child: _buildTop()),
          Positioned(bottom: 0, child: _buildBottom()),
        ]),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            image: AssetImage('assets/icon-geo.png'),
            width: 100,
            height: 100,
            color: Colors.white,
            fit: BoxFit.cover,
          ),
           SizedBox(height: 5), // Jarak antara gambar dan teks
              Text(
                "GeoWaspada IKN",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
            ],
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: _buildForm(),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Register",
          style: TextStyle(
              color: Colors.orange[800], fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "Jika anda memiliki akun, silahkan untuk melakukan proses login untuk masuk",
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12),
        ),
        const SizedBox(height: 40),
        _buildGreyText("Username"),
        _buildInputField(usernameController),
        const SizedBox(height: 25),
        _buildGreyText("Email"),
        _buildInputField(emailController),
        const SizedBox(height: 25),
        _buildGreyText("Password"),
        _buildInputField(passwordController, isPassword: true),
        const SizedBox(height: 25),
        _buildGreyText("Confirm Password"),
        _buildInputField(passwordController, isPassword: true),
        const SizedBox(height: 20),
        _buildRememberForgot(),
        const SizedBox(height: 10),
        _buildLoginButton(),
        const SizedBox(height: 15),
        _buildOtherLogin(),
        Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => dashboardPage()),
              );
            },
            style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(Size(200, 40)), // Atur lebar dan tinggi tombol
            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 196, 111)), // Warna latar belakang
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks
            textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(
                fontWeight: FontWeight.bold,
        ),
      ),
    ),
            child: Text('Masuk'),
            
          ),
        )

      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey,fontSize: 13),
    );
  }

  Widget _buildInputField(TextEditingController controller,
      {isPassword = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        // suffixIcon: isPassword ? Icon(Icons.remove_red_eye) : Icon(Icons.done),
        
      ),
      obscureText: isPassword,
    );
  }

  Widget _buildRememberForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
          //   Checkbox(
          //       value: rememberUser,
          //       onChanged: (value) {
          //         setState(() {
          //           rememberUser = value!;
          //         });
          //       }),
          //   _buildGreyText("Remember me"),
          ],
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => loginPage()),
              );
            }, child: _buildGreyText("Login"))
      ],
    );
  }

  Widget _buildLoginButton() {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => loginPage()),
          );
        },
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)), // Atur lebar dan tinggi tombol
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 232, 135, 0)), // Warna latar belakang
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child: Text('Register'),
      ),
    );
  }

  Widget _buildOtherLogin() {
    return Center(
      child: Column(
        children: [
          _buildGreyText("Or let me in"),
          // const SizedBox(height: 10),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
          //   children: [
          //     Transform.translate(
          //           offset: Offset(35, 0), // Menambahkan margin left negatif
          //           child: Tab(
          //             icon: Image.asset(
          //               "assets/images/facebook.png",
          //               width: 30, // Ubah ukuran ikon sesuai keinginan Anda
          //               height: 30,
          //             ),
          //           ),
          //         ),
          //         Transform.translate(
          //           offset: Offset(-5, 0), // Menambahkan margin left negatif
                    // child: Tab(
                    //   icon: Image.asset(
                    //     "assets/images/twitter.png",
                    //     width: 30,
                    //     height: 30,
                    //   ),
                    // ),
          //         ),
          //         Transform.translate(
          //           offset: Offset(-45, 0), // Menambahkan margin left negatif
          //           child: Tab(
          //             icon: Image.asset(
          //               "assets/images/github.png",
          //               width: 30,
          //               height: 30,
          //             ),
          //           ),
          //         ),
          //   ], 
          // )
        ],
      ),
    );
  }
}