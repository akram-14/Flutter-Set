import 'package:flutter/material.dart';
class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int currentIndex = 0;
  String result = "";
  double height = 0;
  double weight = 0;
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator',
            style: TextStyle(
              color: Colors.white,
            ),),
          elevation: 10.0,
          actions: [
            IconButton(onPressed: (){

            }, icon: const Icon(Icons.settings,
              color: Colors.white,))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      radioButton("man", Colors.blue,0),
                      radioButton("Woman",Colors.pink,1),
                    ],
                  ),
                  const SizedBox(height: 20.0,),
                  const Text(
                    'your height in Cm :',
                    style:
                    TextStyle(
                        fontSize: 18.0),),
                  const SizedBox(height: 10.0,),
                  TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    controller: heightController,
                    decoration: InputDecoration(
                        hintText: "Your Height in Cm",
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        )
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  const Text(
                    'your weight in Kg :',
                    style:
                    TextStyle(
                        fontSize: 18.0),),
                  const SizedBox(height: 10.0,),
                  TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    controller: weightController,
                    decoration: InputDecoration(
                        hintText: "Your weight in Kg",
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        )
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  MaterialButton(
                    minWidth: 500,
                    height: 50,
                    onPressed: (){
                      setState(() {
                       height = double.parse(heightController.value.text );
                       weight = double.parse(weightController.value.text );
                      });
                      calculateBmi(height, weight);
                  },
                    color: Colors.blue,
                  child: Text("Calculate",style: TextStyle(color: Colors.white),
                  ),
                  ),
                  const SizedBox(height: 20.0,),
                  Container(
                    width: double.infinity,
                    child: const Text("your BMI is :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                          color: Colors.black
                    ),
                    ),
                  ),
                  const SizedBox(height: 50.0,),
                  Container(
                    width: double.infinity,
                    child:  Text("$result",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),

                ],


            ),
          ),
        ),
      );

  }
  void changeIndex( int index){
    setState(() {
      currentIndex= index;
    });
  }
  void calculateBmi(double height , double weight){
    double finalResult = weight*(height*height/100000);
    String bmiResult = finalResult.toStringAsFixed(2);
    setState(() {
      result = bmiResult;
    });
  }
  Widget radioButton(String gender, Color color, int index){
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        height: 80.0,
        child: MaterialButton(
          onPressed: (){
            changeIndex(index);
          },
          color: currentIndex == index ? color : Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),

          ),
          child: Text(
            gender,
            style: TextStyle(
              color: currentIndex == index ? Colors.white : color,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ),);
  }
}

