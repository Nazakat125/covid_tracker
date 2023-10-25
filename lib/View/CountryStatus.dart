import 'package:covid_tracker/Services/Country_Status_Services.dart';
import 'package:covid_tracker/View/CountryDetail.dart';
import 'package:covid_tracker/Widgets/Country_Shimer.dart';
import 'package:covid_tracker/Widgets/CustomSizeBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryStatus extends StatefulWidget {
  const CountryStatus({super.key});

  @override
  State<CountryStatus> createState() => _CountryStatusState();
}

class _CountryStatusState extends State<CountryStatus> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Country_Status_Services country_status_services = Country_Status_Services();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            children: [
              CustomSizeBox(
                height: 5.h,
              ),
              Container(
                height: 40.h,
                width: double.infinity,
                child: TextFormField(
                  controller: searchController,
                  onChanged: (value){
                    setState(() {
                      searchController.text = value;
                    });
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5.h),
                      hintText: 'Search Country',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.r))),
                ),
              ),
              CustomSizeBox(
                height: 20.h,
              ),
              Expanded(
                child: FutureBuilder(
                  future: country_status_services.fatchCountryStatusRecors(),
                  builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                    if (!snapshot.hasData) {
                      return Country_Shimmer();
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          String name =
                              snapshot.data![index]['country'].toString();
                          if (searchController.text.isEmpty) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return CountryDetail(
                                        CountryName: snapshot.data![index]
                                            ["country"].toString(),
                                        ActiveCases: snapshot.data![index]
                                            ["active"].toString(),
                                        Contient: snapshot.data![index]
                                            ["continent"].toString(),
                                        CountryFlag: snapshot.data![index]
                                            ["countryInfo"]["flag"].toString(),
                                        Critical: snapshot.data![index]
                                            ["critical"].toString(),
                                        Papulation: snapshot.data![index]
                                            ["population"].toString(),
                                        Tests: snapshot.data![index]["tests"].toString(),
                                        TodayCases: snapshot.data![index]
                                            ["todayCases"].toString(),
                                        TodayDeaths: snapshot.data![index]
                                            ["todayDeaths"].toString(),
                                        TodayRecoved: snapshot.data![index]
                                            ["todayRecovered"].toString(),
                                        TotalCases: snapshot.data![index]
                                            ["cases"].toString(),
                                        TotalDeaths: snapshot.data![index]
                                            ["deaths"].toString(),
                                        TotalRecoved: snapshot.data![index]
                                            ["recovered"].toString());
                                  },
                                ));
                              },
                              child: ListTile(
                                leading: Image(
                                  height: 60.h,
                                  width: 60.w,
                                  image: NetworkImage(snapshot.data![index]
                                      ["countryInfo"]["flag"]),
                                ),
                                title: Text(
                                  snapshot.data![index]['country'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                subtitle: Text(
                                  snapshot.data![index]['continent'].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ),
                            );
                          } else if (name
                              .toLowerCase()
                              .contains(searchController.text.toLowerCase())) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return CountryDetail(
                                        CountryName: snapshot.data![index]
                                        ["country"].toString(),
                                        ActiveCases: snapshot.data![index]
                                        ["active"].toString(),
                                        Contient: snapshot.data![index]
                                        ["continent"].toString(),
                                        CountryFlag: snapshot.data![index]
                                        ["countryInfo"]["flag"].toString(),
                                        Critical: snapshot.data![index]
                                        ["critical"].toString(),
                                        Papulation: snapshot.data![index]
                                        ["population"].toString(),
                                        Tests: snapshot.data![index]["tests"].toString(),
                                        TodayCases: snapshot.data![index]
                                        ["todayCases"].toString(),
                                        TodayDeaths: snapshot.data![index]
                                        ["todayDeaths"].toString(),
                                        TodayRecoved: snapshot.data![index]
                                        ["todayRecovered"].toString(),
                                        TotalCases: snapshot.data![index]
                                        ["cases"].toString(),
                                        TotalDeaths: snapshot.data![index]
                                        ["deaths"].toString(),
                                        TotalRecoved: snapshot.data![index]
                                        ["recovered"].toString());
                                  },
                                ));
                              },
                              child: ListTile(
                                leading: Image(
                                  height: 60.h,
                                  width: 60.w,
                                  image: NetworkImage(snapshot.data![index]
                                  ["countryInfo"]["flag"]),
                                ),
                                title: Text(
                                  snapshot.data![index]['country'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                subtitle: Text(
                                  snapshot.data![index]['continent'].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ),
                            );
                          } else {
                            return Container();
                          }
                        },
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
