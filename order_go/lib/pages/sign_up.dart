import 'package:flutter/material.dart';
import 'package:order_go/theme/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';


class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(

        //Profile
        actions: <Widget>[
        IconButton(

          icon: Icon(Icons.person),
          padding: EdgeInsets.only(right: 30),
          iconSize: 40,
          color: bg,
          onPressed: () {
            // Arama işlemini tetikle
          },
        )
        ],

        //Menu Button
        leading: IconButton(
          padding: EdgeInsets.only(left: 30,bottom: 10),
          icon: Icon(Icons.menu),
          iconSize: 40,
          color: bg,
          onPressed: () {

          },
        ),
        toolbarHeight: 100,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        backgroundColor:mainColor,
        flexibleSpace: FlexibleSpaceBar(
          background: 
          Padding(
            padding: const EdgeInsets.only(top: 80.0,bottom: 30,right: 33,left: 33),
            child: SvgPicture.asset('assets/order_go.svg'),
          ),

        ),



      ), 
      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(35), // Yatay yönde genişlik verelim
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start, // Sola yaslama
              children: <Widget>[

                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Köşeleri yuvarlatmak için
                    border: Border.all(width: 2, color: mainColor), // Border kalınlığı ve rengi
                  ),
                  child: IconButton(
                    padding: EdgeInsets.only(bottom: 1,left:5),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: mainColor,
                    ),
                    iconSize: 15, // İkon
                    onPressed: () {
                      // Butona basıldığında yapılacak işlemler
                    },
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Sign-Up',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'phone number',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.green), // Aktif olduğunda border rengi
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  keyboardType: TextInputType.number, // Sadece numaraların klavyesini açar
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly, // Yalnızca sayıları kabul eder
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'username',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.green), // Aktif olduğunda border rengi
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.green), // Aktif olduğunda border rengi
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  obscureText: true, 
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15), // Köşeleri yuvarlatmak içi
                      ),
                    minimumSize: Size(400, 50),
                    backgroundColor: mainColor, // Doğru parametre backgroundColor olarak kullanılır
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    // Diğer özellikleri buraya ekleyebilirsiniz
                  ),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color : bg,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(top: 200),
                  child: Text.rich(
                    TextSpan(
                      text: 'Designed by ',
                      style: TextStyle(
                        fontSize: 16,
                        color: mainColor,
                        fontWeight: FontWeight.normal,
                        

                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Bug Zappers",
                          style: TextStyle(
                            fontSize: 16,
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                            
                          )
                        )
                      ]
                    )
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
