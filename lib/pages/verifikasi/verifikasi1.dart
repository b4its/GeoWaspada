import 'package:flutter/material.dart';
import 'package:geowaspada/pages/dashboard.dart';
import 'package:geowaspada/pages/login.dart';
import 'package:geowaspada/pages/register.dart';

class verificationPage extends StatefulWidget {
  const verificationPage({super.key});

  @override
  State<verificationPage> createState() => _verificationPageState();
}

class _verificationPageState extends State<verificationPage> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
          Positioned(top: 80, child: _buildTop()),
          // Positioned(bottom: 300, child: _buildBottom()),
          Positioned(
            bottom: 300,
            left: 0,
            right: 0,
            child: _buildBottom(),
          ),
          // Positioned.fill(
          //   top: 200,
          //     child: Align(
          //       alignment: Alignment.topCenter,
          //       child: _buildCenter(),
          //     ),
          //   ),
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
            width: 250,
            height: 250,
            color: Colors.white,
            fit: BoxFit.cover,
          ),
           SizedBox(height: 5), // Jarak antara gambar dan teks
              Text(
                "GeoWaspada IKN",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
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

    Widget _buildCenter() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      const SizedBox(height: 5), // Jarak antara gambar dan teks
      Container(
        width: 300,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.orange[300], // Warna latar belakang biru
          borderRadius: BorderRadius.circular(20), // Border radius 20
        ),
        child:  
        Align(
          alignment: Alignment.center,
          child:  Text(
          "Verifikasi",
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        ),
      ),
    ],
  );
}

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Align(
        //   alignment: Alignment.topLeft,
        //   child:  Text(
        //   "Verifikasi",
        //   style: TextStyle(
        //       color: Colors.orange[800], fontSize: 28, fontWeight: FontWeight.bold),
        // ),
        // ),
       
        const SizedBox(height: 20),
        // _buildGreyText("Nomor Telepon"),
        TextField(
        controller: emailController,
        decoration: InputDecoration(
          hintText: "Masukkan nomor whatsapp aktif",
          hintStyle: TextStyle(
            color: Colors.grey, // warna teks hint
            fontSize: 16, // ukuran font teks hint
            fontStyle: FontStyle.italic, // gaya teks hint
          ),
       // Menampilkan hintText
          border: UnderlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 194, 0, 0)), // Atur warna garis
        ),
        ),
      ),
        const SizedBox(height: 10),
        _buildLoginButton(),
        const SizedBox(height: 10),
        // _buildRememberForgot(),
        _buildIFauthenticate(),
        _buildIFnotauthenticate(),
        const SizedBox(height: 15),
    // LET ME IN    
        // _buildOtherLogin(),
    // Align(
    //       alignment: Alignment.center,
    //       child: ElevatedButton(
    //         onPressed: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(builder: (context) => dashboardPage()),
    //           );
    //         },
    //         style: ButtonStyle(
    //         minimumSize: MaterialStateProperty.all<Size>(Size(200, 40)), // Atur lebar dan tinggi tombol
    //         backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 196, 111)), // Warna latar belakang
    //         foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks
    //         textStyle: MaterialStateProperty.all<TextStyle>(
    //           TextStyle(
    //             fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // ),
    //         child: Text('Masuk'),
            
    //       ),
    //     )

      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget _buildInputField(TextEditingController controller,
      {isPassword = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: isPassword ? Icon(Icons.remove_red_eye) : Icon(Icons.done),
        
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
                MaterialPageRoute(builder: (context) => registerPage()),
              );
            }, child: _buildGreyText("Register"))
      ],
    );
  }

 Widget _buildIFauthenticate() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "sudah memiliki akun?, silahkan",
        style: TextStyle(
          color: Colors.black54,
          fontSize: 16,
        ),
      ),
     TextButton(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => loginPage()),
        );
      },
      child: _buildGreyText("Login"),
)

    ],
  );
}
 
 Widget _buildIFnotauthenticate() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "tidak ingin login?, silahkan",
        style: TextStyle(
          color: Colors.black54,
          fontSize: 16,
        ),
      ),
      TextButton(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => dashboardPage()),
        );
      },
      child: _buildGreyText("Masuk"),
)
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
        MaterialPageRoute(builder: (context) => dashboardPage()),
      );
    },
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all<Size>(Size(130, 40)), // Atur lebar dan tinggi tombol
      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 232, 135, 0)), // Warna latar belakang
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Atur border radius di sini
        ),
      ),
    ),
    child: Text('Kirim'),
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