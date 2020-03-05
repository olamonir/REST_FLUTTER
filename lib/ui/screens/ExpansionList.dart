
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_app/lang/Translations.dart';
import 'package:rest_app/lang/applic.dart';


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
  var _value_levelThreeCase5FromSeveralMeasured = "1";
  var _value_lastStep = "1";







  DropdownButton _levelOne() => DropdownButton<String>(
    iconEnabledColor: Color(0xFF1a8cb8),
    underline: SizedBox(),
    iconSize:28,
    isExpanded: true,
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              Translations.of(context).text('comparison_of_one_group_to_hypothetical_value'),style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
             Translations.of(context).text("comparison_of_two_groups") ,style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

          DropdownMenuItem<String>(
            value: "3",
            child: Text(
              Translations.of(context).text("comparison_between_three_or_more_groups"),style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

          DropdownMenuItem<String>(
            value: "4",
            child: Text(
              Translations.of(context).text("measure_association_between_two_variables"),style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

          DropdownMenuItem<String>(
            value: "5",
            child: Text(
              Translations.of(context).text("prediction"),style: TextStyle(
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
    iconEnabledColor: Color(0xFF1a8cb8),
        iconSize:28,
    underline: SizedBox(),
            isExpanded: true,
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
             Translations.of(context).text( "unpaired_groups"), textAlign: TextAlign.left ,style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              Translations.of(context).text("paired_groups"),style: TextStyle(
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
    iconEnabledColor: Color(0xFF1a8cb8),
        iconSize:28,
    underline: SizedBox(),
            isExpanded: true,
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              Translations.of(context).text("unrelated_groups"),style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              Translations.of(context).text("related_groups"),style: TextStyle(
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
        iconSize:28,
        underline: SizedBox(),
            iconEnabledColor: Color(0xFF1a8cb8),
            isExpanded: true,
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              Translations.of(context).text("from_another_measured_variable"),style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              Translations.of(context).text("from_several_or_binomial_variables"),style: TextStyle(
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
    iconEnabledColor: Color(0xFF1a8cb8),
        iconSize:28,
    underline: SizedBox(),
        isExpanded: true,
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              Translations.of(context).text("ratio_and_interval_data"),
              textAlign: TextAlign.left,
              style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              Translations.of(context).text("ordinal_data"),style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),

          DropdownMenuItem<String>(
            value: "3",
            child: Text(
              Translations.of(context).text("nominal_data"),style: TextStyle(
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
       iconSize:28,
   iconEnabledColor: Color(0xFF1a8cb8),
   underline: SizedBox(),
   isExpanded: true,
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              Translations.of(context).text("ratio_and_interval_data"),style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              Translations.of(context).text("nominal_data"),style: TextStyle(
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
      iconSize:28,
  iconEnabledColor: Color(0xFF1a8cb8),
  iconDisabledColor:  Color(0xFF1a8cb8),
  underline: SizedBox(),
  isExpanded: true,
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              Translations.of(context).text("normal_distribution"),style: TextStyle(
            color: Color(0xFF1a8cb8),
          ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              Translations.of(context).text("non_normal_distribution"),style: TextStyle(
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
    iconEnabledColor: Color(0xFF1a8cb8),
        iconSize:28,
  underline: SizedBox(),
isExpanded: true,
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Container(
              alignment: Alignment(0.0, -1.0),
              margin: new EdgeInsets.all(20),
              child: Text (Translations.of(context).text('type_of_your_hypothesis' ), textAlign: TextAlign.left,style: TextStyle(
            color: Colors.grey, fontSize: 18
              ),)
            ),

            Container(
              alignment: Alignment(0.0, -1.0),
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: new EdgeInsets.only(left:10 , right:10),
              // color: Colors.white,
                decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1a8cb8)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: _levelOne(),
            ),


            Container(
              alignment: Alignment(0.0, -1.0),
              margin: new EdgeInsets.all(20),
              child: Text (Translations.of(context).text('more_details_about_your_hypothesis' ), textAlign: TextAlign.left,style: TextStyle(
            color: Colors.grey, fontSize: 18
              ),)
            ),


            Container(
              alignment: Alignment(0.0, -1.0),
              margin: new EdgeInsets.only(left:10 , right:10),
            padding: EdgeInsets.symmetric(horizontal: 20),
              // color: Colors.white,
                decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1a8cb8)),
                borderRadius: BorderRadius.circular(10)
              ),
            child: _value_levelOne == '2' ?  Center(child: _levelTwoCase2(),) :
              _value_levelOne == '3' ?  Center(child: _levelTwoCase3(),) :
              _value_levelOne == '5' ? Center(child: _levelTwoCase5(),)  :  Center(child: disablebutton(),),

            ),
            // SizedBox(height: 20),



            Container(
              alignment: Alignment(0.0, -1.0),
              margin: new EdgeInsets.all(20),
              child: Text (Translations.of(context).text('type_of_your_data') , textAlign: TextAlign.left,style: TextStyle(
            color: Colors.grey, fontSize: 18
              ),)
            ),


            Container(
                alignment: Alignment(0.0, -1.0),
                decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1a8cb8)),
                borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: new EdgeInsets.only(left:10 , right:10),
              // color: Colors.white,
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
              alignment: Alignment(0.0, 1.0),
              margin: new EdgeInsets.all(20),
              child: Text (Translations.of(context).text('do_your_data_follow_normal_distribution') , textAlign: TextAlign.left,style: TextStyle(
            color: Colors.grey, fontSize: 18
              ),)
            ),


            Container(
              alignment: Alignment(0.0, -1.0),
              margin: new EdgeInsets.only(left:10 , right:10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              // color: Colors.white,
                decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1a8cb8)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: _value_levelThree == '2' ?  Center(child: disablebutton()) :
              _value_levelThree == '3' ?  Center(child: disablebutton()) :
              _value_levelThreeCase5FromSeveralMeasured == '1' && _value_levelTwoCase5 == '2' && _value_levelOne == '5' ?  Center(child: disablebutton()) :
              _value_levelThreeCase5FromSeveralMeasured == '2'   && _value_levelTwoCase5 == '2' && _value_levelOne == '5' ?  Center(child: disablebutton()) :
                Center(child: _lastStep())

            ),


            Container(

              alignment: Alignment(0.0, -1.0),
              margin: new EdgeInsets.all(20),
              child: Text (Translations.of(context).text('final_result') , textAlign: TextAlign.left,style: TextStyle(
            color: Colors.grey, fontSize: 18
              ),)
            ),

            Container(
              margin: new EdgeInsets.only(left:10 , right:10),
              child:
                      _value_levelOne == '1'  && _value_levelThree == '1' && _value_lastStep == '1' ? Text(Translations.of(context).text('one_sample_test'), style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),) :
                      _value_levelOne == '1'  && _value_levelThree == '1' && _value_lastStep == '2' ? Text(Translations.of(context).text('wilcoxon_test') , style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '1'  && _value_levelThree == '2'  ? Text(Translations.of(context).text('wilcoxon_test') ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '1'  && _value_levelThree == '3'  ? Text(Translations.of(context).text('chi_square') ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):


                      _value_levelOne == '2'  && _value_levelTwoCase2 == '1' && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text(Translations.of(context).text('unpaired_test'), style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '1'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text(Translations.of(context).text('mann_whitney_test') ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '1'  && _value_levelThree == '2'   ? Text(Translations.of(context).text('mann_whitney_test'),style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '1'  && _value_levelThree == '3'   ? Text(Translations.of(context).text("fisher_test_chi_square_for_large_samples") , style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):


                      _value_levelOne == '2' && _value_levelTwoCase2 == '2'  && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text(Translations.of(context).text('paired_test') ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '2'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text(Translations.of(context).text('wilcoxon_test' ),style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '2'  && _value_levelThree == '2'   ? Text(Translations.of(context).text('wilcoxon_test'), style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '2' && _value_levelTwoCase2 == '2'  && _value_levelThree == '3'   ? Text(Translations.of(context).text("mcnemars_test") ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):




                      _value_levelOne == '3' && _value_levelTwoCase3 == '1'  && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text(Translations.of(context).text('one_way_anova') , style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '3' && _value_levelTwoCase3 == '1'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text(Translations.of(context).text('kruskal_wallis_test') ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '3' && _value_levelTwoCase3 == '1'  && _value_levelThree == '2'   ? Text(Translations.of(context).text('kruskal_wallis_test') ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '3' && _value_levelTwoCase3 == '1'  && _value_levelThree == '3'   ? Text(Translations.of(context).text("chi_square_test") ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):


                      _value_levelOne == '3' && _value_levelTwoCase3 == '2'  && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text(Translations.of(context).text('repeated_measures_anova') ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '3' && _value_levelTwoCase3 == '2'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text(Translations.of(context).text('friedman_test') ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '3' && _value_levelTwoCase3 == '2'  && _value_levelThree == '2'   ? Text(Translations.of(context).text('friedman_test') ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '3' && _value_levelTwoCase3 == '2'  && _value_levelThree == '3'   ? Text(Translations.of(context).text("cochrane") ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):



                      _value_levelOne == '4'  && _value_levelThree == '1' && _value_lastStep == '1' ? Text(Translations.of(context).text('pearson_correlation'), style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '4'  && _value_levelThree == '1' && _value_lastStep == '2' ? Text(Translations.of(context).text('spearman_correlation'), style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '4'  && _value_levelThree == '2'  ? Text(Translations.of(context).text('spearman_correlation'), style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '4'  && _value_levelThree == '3'  ? Text(Translations.of(context).text('contingency_coefficients'), style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):






                      _value_levelOne == '5' && _value_levelTwoCase5 == '1'  && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text(Translations.of(context).text('one_way_anova'), style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '5' && _value_levelTwoCase5 == '1'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text(Translations.of(context).text('kruskal_wallis_test'), style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '5' && _value_levelTwoCase5 == '1'  && _value_levelThree == '2'   ? Text('kruskal_wallis_test', style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '5' && _value_levelTwoCase5 == '1'  && _value_levelThree == '3'   ? Text("chi_square_test" , style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):



                      _value_levelOne == '5' && _value_levelTwoCase5 == '1'  && _value_levelThree == '1'  && _value_lastStep == '1'  ? Text(Translations.of(context).text('simple_linear_regression'),style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '5' && _value_levelTwoCase5 == '1'  && _value_levelThree == '1'  && _value_lastStep == '2'  ? Text(Translations.of(context).text('nonparametric_regression') , style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '5' && _value_levelTwoCase5 == '1'  && _value_levelThree == '2'   ? Text(Translations.of(context).text('nonparametric_regression') ,style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '5' && _value_levelTwoCase5 == '1'  && _value_levelThree == '3'   ? Text(Translations.of(context).text("simple_logistic_regression"), style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):






                      _value_levelOne == '5' && _value_levelTwoCase5 == '2'  && _value_levelThree == '1'   ? Text(Translations.of(context).text('multiple_linear_regression_or_multiple_nonlinear_regression'),
                       style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):
                      _value_levelOne == '5' && _value_levelTwoCase5 == '2'  && _value_levelThree == '2'   ? Text(Translations.of(context).text('multiple_logistic_regression'),
                       style: TextStyle(color: Color(0xFF1a8cb8), fontSize: 16),):





              Text("                " ),
                // margin: new EdgeInsets.all(20),
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