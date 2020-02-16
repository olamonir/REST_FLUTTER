
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownButtonPage extends StatefulWidget {
  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButtonPage> {
  var _value_levelOne = "1";
  var _value_levelTwoCase2 = "1";
  var _value_levelTwoCase3 = "1";
  var _value_levelTwoCase5 = "1";
  var _value_levelThree = "1";
  // var _value_levelThreeCase2Unpaired = "1";
  // var _value_levelThreeCase2Paired = "1";
  // var _value_levelThreeCase3Unmatched = "1";
  // var _value_levelThreeCase3Matched = "1";
  // var _value_levelThreeCase4 = "1";
  // var _value_levelThreeCase5FromAnotherMeasured = "1";
  var _value_levelThreeCase5FromSeveralMeasured = "1";
  var _value_lastStep = "1";







  DropdownButton _levelOne() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              "Comparison of one group to hypothetical value",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "Comparison of two groups",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

          DropdownMenuItem<String>(
            value: "3",
            child: Text(
              "Comparison between three or more groups",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

          DropdownMenuItem<String>(
            value: "4",
            child: Text(
              "Measure association between two variables",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

          DropdownMenuItem<String>(
            value: "5",
            child: Text(
              "Prediction",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

        ],
        onChanged: (value) {
          setState(() {
            _value_levelOne = value;
          });
        },
        value: _value_levelOne,
      );

  DropdownButton _levelTwoCase2() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              "Unpaired groups", textAlign: TextAlign.left ,style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "Paired groups",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

        ],
        onChanged: (value) {
          setState(() {
            _value_levelTwoCase2 = value;
          });
        },
        value: _value_levelTwoCase2,
      );

  DropdownButton _levelTwoCase3() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              "Unrelated groups",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "Related groups",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

        ],
        onChanged: (value) {
          setState(() {
            _value_levelTwoCase3 = value;
          });
        },
        value: _value_levelTwoCase3,
      );

  DropdownButton _levelTwoCase5() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              "From another measured variable",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "From several or binomial variables",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

        ],
        onChanged: (value) {
          setState(() {
            _value_levelTwoCase5 = value;
          });
        },
        value: _value_levelTwoCase5,
      );




///////////////////////////////////////////////////////////////////////////
  DropdownButton _levelThree() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              "Ratio and Interval data",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "Ordinal data",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

          DropdownMenuItem<String>(
            value: "3",
            child: Text(
              "Nominal data",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

        ],
        onChanged: (value) {
          setState(() {
            _value_levelThree = value;
          });
        },
        value: _value_levelThree,
      );




 DropdownButton _levelThreeCase5FromSeveralMeasured() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              "Ratio and Interval data",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "Nominal data",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value_levelThreeCase5FromSeveralMeasured = value;
          });
        },
        value: _value_levelThreeCase5FromSeveralMeasured,
      );

      ////////////////////////////////////////////////////

DropdownButton _lastStep() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              "Normal Distribution",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "Non Normal Distribution",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value_lastStep = value;
          });
        },
        value: _value_lastStep,
      );

DropdownButton disablebutton() => DropdownButton<String>(

        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              ".............................................................................",style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

        ],
        onChanged: (value) {
          setState(() {
            this.deactivate();
            // _value_lastStep = value;
          });
        },
        // value: _value_lastStep,
      );


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1a8cb8),
        title: Image.asset('lib/assets/images/logorestapp.png' , fit: BoxFit.contain,
                  height: 30,),
        centerTitle: true,
      ),





      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Container(
              alignment: Alignment(-1.0, -1.0),
              margin: new EdgeInsets.all(20),
              child: Text (' Type of your Hypothesis' , textAlign: TextAlign.left,style: TextStyle(
            color: Colors.grey, fontSize: 18
              ),)
            ),
            // SizedBox(height: 20),

            //our code.


            Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: _levelOne(),
            ),


            Container(
              alignment: Alignment(-1.0, -1.0),
              margin: new EdgeInsets.all(20),
              child: Text (' More details about your Hypothesis' , textAlign: TextAlign.left,style: TextStyle(
            color: Colors.grey, fontSize: 18
              ),)
            ),


            Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
            child: _value_levelOne == '2' ?  Center(child: _levelTwoCase2(),) :
              _value_levelOne == '3' ?  Center(child: _levelTwoCase3(),) :
              _value_levelOne == '5' ? Center(child: _levelTwoCase5(),)  :  Center(child: disablebutton(),),

            ),
            // SizedBox(height: 20),



            Container(
              alignment: Alignment(-1.0, -1.0),
              margin: new EdgeInsets.all(20),
              child: Text ('Type of your Data' , textAlign: TextAlign.left,style: TextStyle(
            color: Colors.grey, fontSize: 18
              ),)
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child:_value_levelOne == '1'?  Center(child: _levelThree(),) :
              _value_levelTwoCase2 == '1'  && _value_levelOne == '1'?  Center(child: _levelThree(),) :
                    _value_levelTwoCase2 == '2'  && _value_levelOne == '1' ?  Center(child: _levelThree(),) :
                    _value_levelTwoCase3 == '1' && _value_levelOne == '3'  ? Center(child: _levelThree())   :
                    _value_levelTwoCase3 == '2'  && _value_levelOne == '3' ?  Center(child: _levelThree())  :
                    _value_levelTwoCase5 == '1'  && _value_levelOne == '5'  ?  Center(child: _levelThree()):
                    _value_levelTwoCase5 == '2'  && _value_levelOne == '5'  ?  Center(child: _levelThreeCase5FromSeveralMeasured())
                    :Center(child: _levelThree(),),
            ),



            Container(
              alignment: Alignment(-1.0, -1.0),
              margin: new EdgeInsets.all(20),
              child: Text ('Do your Data Follow Normal Distribution ?' , textAlign: TextAlign.left,style: TextStyle(
            color: Colors.grey, fontSize: 18
              ),)
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: _value_levelThree == '2' ?  Center(child: disablebutton()) :
              _value_levelThree == '3' ?  Center(child: disablebutton()) :
              _value_levelThreeCase5FromSeveralMeasured == '1' && _value_levelTwoCase5 == '2' && _value_levelOne == '5' ?  Center(child: disablebutton()) :
              _value_levelThreeCase5FromSeveralMeasured == '2'   && _value_levelTwoCase5 == '2' && _value_levelOne == '5' ?  Center(child: disablebutton()) :
                Center(child: _lastStep())

            ),


            Container(
              alignment: Alignment(-1.0, -1.0),
              margin: new EdgeInsets.all(20),
              child: Text ('Final Result' , textAlign: TextAlign.left,style: TextStyle(
            color: Colors.grey, fontSize: 18
              ),)
            ),

            Container(

              child:
                      _value_levelOne == '1'  && _value_levelThree == '1' && _value_lastStep == '1' ? Text('One Sample Test'):
                      _value_levelOne == '1'  && _value_levelThree == '1' && _value_lastStep == '2' ? Text('Wilcoxon test'):
                      _value_levelOne == '1'  && _value_levelThree == '2'  ? Text('Wilcoxon test'):
                      _value_levelOne == '1'  && _value_levelThree == '3'  ? Text('Chi_square'):


                      _value_levelOne == '2'  && _value_levelTwoCase2 == '1' && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text('Unpaired test'):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '1'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text('Mann-Whitney test'):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '1'  && _value_levelThree == '2'   ? Text('Mann-Whitney test'):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '1'  && _value_levelThree == '3'   ? Text("Fisher's test (Chi-square for large samples"):


                      _value_levelOne == '2' && _value_levelTwoCase2 == '2'  && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text('paired test'):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '2'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text('Wilcoxon test'):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '2'  && _value_levelThree == '2'   ? Text('Wilcoxon test'):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '2'  && _value_levelThree == '3'   ? Text("McNemar's test"):




                      _value_levelOne == '3' && _value_levelTwoCase2 == '1'  && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text('One way ANOVA'):
                      _value_levelOne == '3' && _value_levelTwoCase2 == '1'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text('Kruskal Wallis test'):
                      _value_levelOne == '3' && _value_levelTwoCase2 == '1'  && _value_levelThree == '2'   ? Text('Kruskal Wallis test'):
                      _value_levelOne == '3' && _value_levelTwoCase2 == '1'  && _value_levelThree == '3'   ? Text("Chi_square test"):


                      _value_levelOne == '3' && _value_levelTwoCase2 == '2'  && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text('Repeated measures ANOVA'):
                      _value_levelOne == '3' && _value_levelTwoCase2 == '2'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text('Friedman test'):
                      _value_levelOne == '3' && _value_levelTwoCase2 == '2'  && _value_levelThree == '2'   ? Text('Friedman test'):
                      _value_levelOne == '3' && _value_levelTwoCase2 == '2'  && _value_levelThree == '3'   ? Text("Cochrane Q"):



                      _value_levelOne == '4'  && _value_levelThree == '1' && _value_lastStep == '1' ? Text('Pearson correlation'):
                      _value_levelOne == '4'  && _value_levelThree == '1' && _value_lastStep == '2' ? Text('Spearman correlation'):
                      _value_levelOne == '4'  && _value_levelThree == '2'  ? Text('Spearman correlation'):
                      _value_levelOne == '4'  && _value_levelThree == '3'  ? Text('Contingency coefficients'):






                      _value_levelOne == '5' && _value_levelTwoCase2 == '1'  && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text('One way ANOVA'):
                      _value_levelOne == '5' && _value_levelTwoCase2 == '1'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text('Kruskal Wallis test'):
                      _value_levelOne == '5' && _value_levelTwoCase2 == '1'  && _value_levelThree == '2'   ? Text('Kruskal Wallis test'):
                      _value_levelOne == '5' && _value_levelTwoCase2 == '1'  && _value_levelThree == '3'   ? Text("Chi_square test"):




              Text("ResultResultResutResultResultResultResultResultResultResult"),
                margin: new EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF1a8cb8)),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
            ),
            SizedBox(height: 500)
          ],
        ),
      ),
    );
  }
}