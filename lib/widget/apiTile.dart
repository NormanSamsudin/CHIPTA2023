import 'package:flutter/material.dart';
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:mykebun/config/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class apiTile extends StatefulWidget {
  apiTile(
      {super.key,
      required this.temperature,
      required this.relHumidity,
      required this.precipitation,
      required this.soilTemperature,
      required this.soilMoisture,
      required this.uvIndex});

  final double temperature;
  final int relHumidity;
  final double precipitation;
  final double soilTemperature;
  final double soilMoisture;
  final double uvIndex;
  @override
  State<apiTile> createState() => _apiTileState();
}

class _apiTileState extends State<apiTile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ExpansionTileGroup(
        toggleType: ToggleType.expandOnlyCurrent,
        spaceBetweenItem: 15,
        children: [
          ////temperature///
          ExpansionTileOutlined(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (widget.temperature < 10 || widget.temperature > 35)
                      Icon(
                        Icons.warning,
                        color: Colors.amber,
                      ),
                    Text(
                      'Temperature',
                      style: GoogleFonts.lexend(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  '${widget.temperature} °C',
                  style: GoogleFonts.lexend(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              ],
            ),
            leading: Icon(
              Icons.addchart_sharp,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
            ),
            expendedBorderColor: Color.fromARGB(255, 251, 251, 251),
            decoration: BoxDecoration(
              color: hijauPekat,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(3, 3), // changes position of shadow
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Row(
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Minimum : 10 °C',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'Optimal Day: 30 - 35 °C',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'Maximum : 35 °C',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.asset('assets/lottie/temperature.json'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),

          ///relative humidity///
          ExpansionTileOutlined(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (widget.relHumidity < 30 || widget.relHumidity > 85)
                      Icon(
                        Icons.warning,
                        color: Colors.amber,
                      ),
                    Text(
                      'Relative Humidity',
                      style: GoogleFonts.lexend(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  '${widget.relHumidity} %',
                  style: GoogleFonts.lexend(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              ],
            ),
            leading: Icon(
              Icons.water,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
            ),
            expendedBorderColor: Color.fromARGB(255, 251, 251, 251),
            decoration: BoxDecoration(
              color: hijauPekat,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(3, 3), // changes position of shadow
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Low    : Below 30 %',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'Optimal: 40 - 60 %',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'High   : Above 85 %',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.asset('assets/lottie/humidity.json'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),

          ///precipitation///
          ExpansionTileOutlined(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (widget.precipitation > 7.6)
                      Icon(
                        Icons.warning,
                        color: Colors.amber,
                      ),
                    Text(
                      'Precipitation',
                      style: GoogleFonts.lexend(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  '${widget.precipitation} mm',
                  style: GoogleFonts.lexend(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              ],
            ),
            leading: Icon(
              Icons.solar_power_outlined,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
            ),
            expendedBorderColor: Color.fromARGB(255, 251, 251, 251),
            decoration: BoxDecoration(
              color: hijauPekat,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(3, 3), // changes position of shadow
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dry    : 0 mm',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'Light Rain: Below 2.5 mm',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'Moderate Rain   : 2.5 - 7.6 mm',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'Heavy Rain   : Above 7.6 mm',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.asset('assets/lottie/precipitation.json'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),

          ///soil temperature///
          ExpansionTileOutlined(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (widget.soilTemperature < 10 ||
                        widget.soilTemperature > 35)
                      Icon(
                        Icons.warning,
                        color: Colors.amber,
                      ),
                    Text(
                      'Soil Temperature',
                      style: GoogleFonts.lexend(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  '${widget.soilTemperature} °C',
                  style: GoogleFonts.lexend(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              ],
            ),
            leading: Icon(
              Icons.water,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
            ),
            expendedBorderColor: Color.fromARGB(255, 251, 251, 251),
            decoration: BoxDecoration(
              color: hijauPekat,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(3, 3), // changes position of shadow
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Minimum : 10 °C',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'Optimal Day: 10 - 35 °C',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'Maximum : 35 °C',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.asset('assets/lottie/soilTemperature.json'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),

          /// soil moisture ///
          ExpansionTileOutlined(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (widget.soilMoisture < 0.25 || widget.soilMoisture > 0.7)
                      Icon(
                        Icons.warning,
                        color: Colors.amber,
                      ),
                    Text(
                      'Soil Moisture',
                      style: GoogleFonts.lexend(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  '${widget.soilMoisture} m3/m3',
                  style: GoogleFonts.lexend(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              ],
            ),
            leading: Icon(
              Icons.water_drop_outlined,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
            ),
            expendedBorderColor: Color.fromARGB(255, 251, 251, 251),
            decoration: BoxDecoration(
              color: hijauPekat,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(3, 3), // changes position of shadow
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Low : Below 0.25 m3/m3',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'Optimal : 0.3 - 0.45 m3/m3',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'High : Above 0.7 m3/m3',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      child: Lottie.asset('assets/lottie/soilMoisture.json'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),

          ///uv index ///
          ExpansionTileOutlined(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (widget.uvIndex > 5)
                      Icon(
                        Icons.warning,
                        color: Colors.amber,
                      ),
                    Text(
                      'UV Index',
                      style: GoogleFonts.lexend(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  '${widget.uvIndex}',
                  style: GoogleFonts.lexend(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              ],
            ),
            leading: Icon(
              Icons.light_mode,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
            ),
            expendedBorderColor: Color.fromARGB(255, 251, 251, 251),
            decoration: BoxDecoration(
              color: hijauPekat,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(3, 3), // changes position of shadow
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Low           : Below 3',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'Moderate : 3 - 5',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          'High          : Above 5',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.asset('assets/lottie/uv.json'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ]);
  }
}
