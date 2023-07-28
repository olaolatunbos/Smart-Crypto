import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E1A32),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(35, 70, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 280,
                height: 100,
                child: Text(
                  "The Bull Market Support Band",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    "img/sma-ema.png",
                    scale: 2.2,
                  )
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: const [
                  Text(
                    "Overview",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: 370,
                    height: 200,
                    child: Text(
                      "The bull market support band has historically acted as a support band in bull runs, as the name suggests. It refers to the band between the 20W simple moving average (SMA) and 21W exponential moving average (EMA). For BTC the price has often bounced off-, or rode a small distance from the BMSB until the end of the market cycle. For instance in the 2017 bull run Bitcoin had several 30% to 40% corrections to the support band. It also acted as support several times in late 2020, before the bull run in early 2021.",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "Usage",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: 370,
                    height: 200,
                    child: Text(
                      "Historically buying when the price of BTC is below the BMSB has always been a good choice. Likewise for selling when the price extends too far above the BMSB. To see the deviation from the 20W SMA you could check the Short Term Bubble Risk chart. Crossovers of moving averages can also be used as indicators for trend reversals. For instance whenever the green line (21W EMA) crosses down into the red line (20W SMA) that could be an indicator of bearish times. The crossover on April 25, 2021 happened a few days before the major price crash. The BMSB can also be used as a breakout indicator, for example as a band of resistance for bearish times.",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
