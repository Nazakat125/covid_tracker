import 'package:covid_tracker/Widgets/CountryRow.dart';
import 'package:covid_tracker/Widgets/CustomSizeBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pie_chart/pie_chart.dart';

class CountryDetail extends StatefulWidget {
  CountryDetail(
      {super.key,
      required this.CountryName,
      required this.ActiveCases,
      required this.Contient,
      required this.CountryFlag,
      required this.Critical,
      required this.Papulation,
      required this.Tests,
      required this.TodayCases,
      required this.TodayDeaths,
      required this.TodayRecoved,
      required this.TotalCases,
      required this.TotalDeaths,
      required this.TotalRecoved});
  String CountryName;
  String CountryFlag;
  String TodayCases;
  String TodayDeaths;
  String TodayRecoved;
  String TotalCases;
  String TotalDeaths;
  String TotalRecoved;
  String ActiveCases;
  String Critical;
  String Papulation;
  String Tests;
  String Contient;
  @override
  State<CountryDetail> createState() => _CountryDetailState();
}

class _CountryDetailState extends State<CountryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            children: [
              Container(
                height: 150.h,
                width: double.infinity,
                child:
                PieChart(dataMap: {
                  "Total":double.parse(widget.TotalCases),
                  "Recoverd":double.parse(widget.TotalRecoved),
                  "Death":double.parse(widget.TotalDeaths),
                },
                  animationDuration: Duration(milliseconds: 1200),
                  chartType: ChartType.ring,
                  chartValuesOptions: ChartValuesOptions(
                      showChartValuesInPercentage: true
                  ),
                  colorList: [
                    Colors.blue,
                    Colors.green,
                    Colors.red,
                  ],
                  legendOptions:LegendOptions(
                      legendPosition: LegendPosition.left
                  ) ,
                ),
              ),
              CustomSizeBox(height: 30.h,),

              SizedBox(
                child: Stack(
                  clipBehavior:Clip.none ,
                  alignment: Alignment.topCenter,
                  children: [

                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomSizeBox(height: 50,),
                          Center(
                            child: Text(
                              widget.CountryName,
                              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w800),
                            ),
                          ),
                          CustomSizeBox(height: 10,),
                          Text(
                            widget.Contient,
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
                          CustomSizeBox(height: 10,),
                          CountryRow(title: 'Today Cases', value: widget.TodayCases),
                          CountryRow(title: 'Today Deaths', value: widget.TodayDeaths),
                          CountryRow(title: 'Today Recovered', value:widget.TodayRecoved),
                          CountryRow(title: 'Covid Tests', value: widget.Tests),
                          CountryRow(title: 'Active Cases', value: widget.ActiveCases),
                          CountryRow(title: 'Critical', value: widget.Critical),
                          CountryRow(title: 'Total Cases', value: widget.TotalCases),
                          CountryRow(title: 'Total Recoverd', value: widget.TotalRecoved),
                          CountryRow(title: 'Total Deaths', value: widget.TotalDeaths),
                          CountryRow(title: 'Population', value: widget.Papulation),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -30,
                      child: CircleAvatar(
                        radius: 40.r,
                        backgroundImage: NetworkImage(widget.CountryFlag),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
