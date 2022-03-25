import 'package:bmi/constans/app_constans.dart';
import 'package:bmi/wid/first.dart';
import 'package:bmi/wid/sec.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double result = 0;
  String _textResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Text(
            "Calculate your \n          BMI",
            style: TextStyle(color: secondcolor,fontWeight: FontWeight.w900,fontSize: 25),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
      ),



      
      backgroundColor: maincolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: secondcolor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white30.withOpacity(0.8)
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: secondcolor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight",
                      hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.white30.withOpacity(0.8)
                      ),
                    ),
                  ),
                ),




              ],
            ),
            SizedBox(height: 30,),





            GestureDetector(
              onTap: (){

                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  result = _w / (_h * _h);
                  if (result > 25)
                  {
                    _textResult = "Over weight";
                  } else if (result >= 18.5 && result <= 25)
                  {
                    _textResult = "Normal weight";
                  }
                  else
                  {
                    _textResult = "Under weight";
                  }
                }
                );
              },
              child: Container(
                child: Text("Calculate",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: secondcolor),),
              ),
            ),




            SizedBox(height: 50,),






               Container(
                child: Text(result.toStringAsFixed(2),style: TextStyle(fontSize: 90, color: secondcolor),),
              ),
            




            SizedBox(height: 30,),



            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                child: Text(_textResult,style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400, color: secondcolor),),
              ),
            ),




            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
