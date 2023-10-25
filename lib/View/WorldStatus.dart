import 'package:covid_tracker/Model/WorldStateModel.dart';
import 'package:covid_tracker/Services/Status_Services.dart';
import 'package:covid_tracker/View/CountryStatus.dart';
import 'package:covid_tracker/Widgets/CountryRow.dart';
import 'package:covid_tracker/Widgets/Country_Shimer.dart';
import 'package:covid_tracker/Widgets/CustomSizeBox.dart';
import 'package:covid_tracker/Widgets/World_Shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStatus extends StatefulWidget {
  const WorldStatus({super.key});

  @override
  State<WorldStatus> createState() => _WorldStatusState();
}

class _WorldStatusState extends State<WorldStatus>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: Duration(seconds: 3), vsync: this)
        ..repeat();

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Status_Services status_services = Status_Services();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FutureBuilder(
                  future: status_services.fatchWorldStatusRecors(),
                  builder: (context,AsyncSnapshot<WorldStateModel> snapshot){
                  if(!snapshot.hasData){
                    print(snapshot.toString());
                    return World_Shimmer();
                  }else{
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PieChart(
                          dataMap: {
                            "Total": double.parse(snapshot.data!.cases.toString()),
                            "Recoverd":double.parse(snapshot.data!.recovered.toString()),
                            "Death": double.parse(snapshot.data!.deaths.toString()),
                          },
                          animationDuration: Duration(microseconds: 1200),
                          chartType: ChartType.disc,
                          chartValuesOptions: ChartValuesOptions(
                            showChartValuesInPercentage: true
                          ),
                          colorList: [
                            Colors.blue,
                            Colors.green,
                            Colors.red,
                          ],
                          legendOptions:
                          LegendOptions(legendPosition: LegendPosition.left),
                        ),
                        CustomSizeBox(
                          height: 50,
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CountryRow(title: 'Today Cases', value: snapshot.data!.todayCases.toString()),
                              CountryRow(title: 'Today Deaths', value: snapshot.data!.todayDeaths.toString()),
                              CountryRow(title: 'Today Recovered', value: snapshot.data!.todayRecovered.toString()),
                              CountryRow(title: 'Covid Tests', value: snapshot.data!.tests.toString()),
                              CountryRow(title: 'Active Cases', value: snapshot.data!.active.toString()),
                              CountryRow(title: 'Critical', value: snapshot.data!.critical.toString()),
                              CountryRow(title: 'Total Cases', value: snapshot.data!.cases.toString()),
                              CountryRow(title: 'Total Recoverd', value: snapshot.data!.recovered.toString()),
                              CountryRow(title: 'Total Deaths', value: snapshot.data!.deaths.toString()),
                              CountryRow(title: 'Population', value: snapshot.data!.population.toString()),
                            ],
                          ),
                        ),

                        CustomSizeBox(
                          height: 30.h,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => CountryStatus(),));
                            },
                            child: Text('Track Countres'),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(300.w, 40.h),
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r))
                            ),
                          ),
                        )

                      ],
                    );
                  }
                },),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
