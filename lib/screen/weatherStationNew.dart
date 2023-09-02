import 'package:flutter/material.dart';
import 'package:mykebun/config/color.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mykebun/widget/apiTile.dart';
import 'dart:async';
import 'package:mykebun/model/dataStream.dart';
import 'package:lottie/lottie.dart';
class WeatherStationNew extends StatefulWidget {
  @override
  State<WeatherStationNew> createState() => _WeatherStationState();
}

class _WeatherStationState extends State<WeatherStationNew> {
  // WeatherApiClient client = WeatherApiClient();
  late Timer _timer;
  List<dynamic> temperature = [];
  List<dynamic> relhumidity = [];
  List<dynamic> precipitation = [];
  List<dynamic> soilTemperature = [];
  List<dynamic> soilMoisture = [];
  List<dynamic> uvIndex = [];
  List<dynamic> time = [];
  int indexRecem = 0;
  List<String> recem = [];

  Map<String, List<String>> cropPlace = {};

  // data stream object
  final DataStream _dataStream = DataStream();

  // hold json data from request
  Map<String, dynamic> _jsonData = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //recem.add('');
    _dataStream.fetchDataFromApi(
       2.974242, 101.705955); // hardcoded seri kembangan 4.544047, 
    _timer = Timer.periodic(Duration(minutes: 60), (timer) {
      _dataStream.fetchDataFromApi(2.974242, 101.705955);
    });
  }

  // untuk cancel datastream
  @override
  void dispose() {
    _dataStream.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                      height: 78,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CircleAvatar(
                            backgroundColor: hijauPekat, //193, 207, 218, 1
                            radius: 35,
                            child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 237, 237, 237),
                                radius: 30,
                                child: Container(
                                    height: 40,
                                    child: Image.asset('assets/image/corn.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(
                                193, 207, 218, 189), //193, 207, 218, 1
                            radius: 35,
                            child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 237, 237, 237),
                                radius: 30,
                                child: Container(
                                    height: 40,
                                    child:
                                        Image.asset('assets/image/chili.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(
                                193, 207, 218, 189), //193, 207, 218, 1
                            radius: 35,
                            child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 237, 237, 237),
                                radius: 30,
                                child: Container(
                                    height: 40,
                                    child: Image.asset(
                                        'assets/image/cucumber.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(
                                193, 207, 218, 189), //193, 207, 218, 1
                            radius: 35,
                            child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 237, 237, 237),
                                radius: 30,
                                child: Container(
                                    height: 40,
                                    child:
                                        Image.asset('assets/image/tomato.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(
                                193, 207, 218, 189), //193, 207, 218, 1
                            radius: 35,
                            child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 237, 237, 237),
                                radius: 30,
                                child: Container(
                                    height: 40,
                                    child:
                                        Image.asset('assets/image/pumpkin.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(
                                193, 207, 218, 189), //193, 207, 218, 1
                            radius: 35,
                            child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 237, 237, 237),
                                radius: 30,
                                child: Container(
                                    height: 40,
                                    child: Image.asset(
                                        'assets/image/bitter-gourd.png'))),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                StreamBuilder<Map<String, dynamic>>(
                    stream: _dataStream.dataStream, //getData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        _jsonData = snapshot.data!;
                        print('_jsonData: $_jsonData');
                        //6 variable
                        time = _jsonData['hourly']['time'];
                        temperature = _jsonData['hourly']['temperature_2m'];
                        relhumidity =
                            _jsonData['hourly']['relativehumidity_2m'];
                        precipitation = _jsonData['hourly']['precipitation'];
                        soilTemperature =
                            _jsonData['hourly']['soil_temperature_0cm'];
                        soilMoisture =
                            _jsonData['hourly']['soil_moisture_0_1cm'];
                        uvIndex = _jsonData['hourly']['uv_index'];
                        var index = time.length;

                        //check index
                        for (int i = time.length - 1; i > 0; i--) {
                          if (DateTime.parse(time[i])
                              .isBefore(DateTime.now())) {
                            index = i;
                            print(
                                '$i this i ${DateTime.parse(time[i])}  ${DateTime.now()}');
                            break;
                          }
                        }

                        if (temperature[index] <= 10) {
                          recem.add(
                              'Cover the crops with lightweight fabrics to avoid frost formation, protect against cold air and provide insulation.');
                        }
                        if (temperature[index] >= 35) {
                          recem.add(
                              'Apply mulch at the base of the plant to ensure soil moisture retention and regulate soil temperature and, provide shades to mitigate direct heat.');
                        }
                        if (relhumidity[index] < 30) {
                          recem.add(
                              'Immediate action to counteract low humidity levels are of course proper irrigation. Ensure the crops are well irrigated.');
                        }
                        if (relhumidity[index] > 85) {
                          recem.add(
                              'Ensure adequate spacing between plants to allow better air circulation to dry the plant surfaces and avoid overhead irrigation with direct soil irrigation.');
                        }
                        if (soilMoisture[index] < 0.25) {
                          recem.add(
                              'Soil drought will most likely occur in the event of intense hot seasons.To retain water in soil, consider as well mulching to increase water retention.');
                        }
                        if (soilMoisture[index] > 0.70) {
                          recem.add(
                              'In the event of soil waterlogged, reduce irrigation or wait it out and allow water to naturally flow out of the farmlands, aerate the soil and remove mulch');
                        }
                        if (uvIndex[index] > 5) {
                          recem.add(
                              'Countermeasures that can be taken if necessary are increased irrigation, mulching, shading and others.');
                        }
                        

                        print('length rece : ${recem.length}');

                        return Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Column(
                            children: [
                              Container(
                                  width: double.infinity,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: hijauCair,
                        
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          left: 20,
                                          top: 20,
                                          child: Text(
                                            'Recommendation',
                                            style: GoogleFonts.lexend(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                color: const Color.fromARGB(
                                                    255, 0, 0, 0)),
                                          )),
                                      
                                      Positioned(
                                          left: 313,
                                          top: 13,
                                          child: Container(
                                            height: 40,
                                            child: Image.asset('assets/image/brain.png'))
                                      ),
                                        
                                      Positioned(
                                          left: 20,
                                          top: 55,
                                          child: Container(
                                            width: 330,
                                            child: recem.isEmpty? Text(
                                               'The crops are flourishing due to the perfect balance of temperature, humidity, soil moisture, and UV index.',
                                              style: GoogleFonts.lexend(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  color: const Color.fromARGB(
                                                      255, 0, 0, 0)),
                                            ) : Text(
                                              recem[indexRecem],
                                              style: GoogleFonts.lexend(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  color: const Color.fromARGB(
                                                      255, 0, 0, 0)),
                                            ),
                                          )),
                                    ],
                                  )),
                              Container(
                                height: 60,
                                width: double.infinity,
                                color: Color.fromARGB(255, 189, 229, 186),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        left: 20,
                                        top: 10,
                                        child: Container(
                                          width: 350,
                                          child: Text(
                                            'Last Update',
                                            style: GoogleFonts.lexend(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                color: const Color.fromARGB(
                                                    255, 0, 0, 0)),
                                          ),
                                        )),
                                    Positioned(
                                        left: 20,
                                        top: 30,
                                        child: Container(
                                          width: 350,
                                          child: Text(
                                            '${DateFormat('MMMM d, y').format(DateTime.parse(time[index]))}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        )),
                                    Positioned(
                                        left: 140,
                                        top: 30,
                                        child: Container(
                                          width: 350,
                                          child: Text(
                                            DateFormat('HH:mm').format(
                                                DateTime.parse(time[index])),
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        )),
                                    Positioned(
                                      left: 149,
                                      top: 12,
                                      child: Container(
                                        width: 350,
                                        child: Container(
                                          height: 15,
                                          width: 15,
                                          child: Text('Seri Kembangan'),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: -40,
                                      top: 12,
                                      child: Container(
                                        width: 350,
                                        child: Container(
                                          height: 15,
                                          width: 15,
                                          child: Image.asset(
                                              'assets/image/corn.png'),
                                        ),
                                      ),
                                    ),
                                    recem.isEmpty ?
                                      Positioned (
                                          left: 310,
                                          top: 13,
                                          child: Container(
                                                height: 35,
                                                child: Image.asset(
                                                    'assets/image/insignia.png')),
                                          ) : Positioned(
                                          left: 310,
                                          top: 13,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                indexRecem++;
                                                // print(recem[indexRecem]);
                                                // print(indexRecem);
                                                // print(
                                                //     'heloaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
                                              });
                                            },
                                            child: Container(
                                                height: 35,
                                                child: Image.asset(
                                                    'assets/image/right-arrow.png')),
                                          ))
                        
                                    
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              apiTile(
                                  precipitation: precipitation[index]!,
                                  relHumidity: relhumidity[index]!,
                                  soilMoisture: soilMoisture[index]!,
                                  temperature: temperature[index]!,
                                  uvIndex: uvIndex[index]!,
                                  soilTemperature: soilTemperature[index]!),
                            ],
                          ),
                        );
                        // : Text('Choose your location');
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else {
                        return Column(
                          children: [
                            SizedBox(height: 80,),
                            Container(
                                width: double.infinity,
                                height: 200,
                                child: Center(
                                  child: Lottie.asset('assets/lottie/loadingNew.json'),
                                )),
                          ],
                        );
                      }
                    }),
              ],
            ),
          ),
      )
    );
  }
}
