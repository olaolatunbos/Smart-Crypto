import 'package:crypto_app/screens/home_screen.dart';
import 'package:crypto_app/screens/information_page.dart';
import 'package:flutter/material.dart';

class InformationListPage extends StatelessWidget {
  InformationListPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  TabBarExample();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xFF0E1A32),
        appBar: AppBar(
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(30, 55, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Learn",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1C3254),
                  ),
                  child: IconButton(
                    hoverColor: Color(0xFF1649FF),
                    icon: Icon(Icons.notification_add),
                    color: Color(0xFFC0C9EA),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          elevation: 0,
          backgroundColor: Color(0xFF0E1A32),
          bottom: TabBar(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            unselectedLabelColor: Color(0xFF0E1A32),
            indicatorColor: Color(0xFF1649FF),
            indicatorWeight: 0.1,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF1649FF)),
            tabs: <Widget>[
              Tab(
                child: Container(
                  width: 70,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                    child: Text(
                      "Risk",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 60,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(13, 2, 0, 0),
                    child: Text(
                      "Dom",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 60,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(13, 2, 0, 0),
                    child: Text(
                      "ROI",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 60,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(13, 2, 0, 0),
                    child: Text(
                      "Ret",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 60,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(13, 2, 0, 0),
                    child: Text(
                      "MA",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Bull Market Support Band",
                        summary:
                            "The bull market support band has historically acted as a support band in bull runs, as the name suggests. It refers to the band between the 20W simple moving average (SMA) and 21W exponential moving average (EMA). For BTC the price has often bounced off-, or rode a small distance from the BMSB until the end of the market cycle. For instance in the 2017 bull run Bitcoin had several 30% to 40% corrections to the support band",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Dominance",
                        summary:
                            "Bitcoin dominance, as its name implies, reflects the dominance of Bitcoin compared to the total market. Its calculation is the Asset Market Cap (supply * price) divided by the Total Market Cap (sum over all assets of asset supply * price) as a percentage. Dominance is best seen as a tool to give perspective of how the cryptoverse is evolving. At the start when bitcoin was the largest and only one of few cryptocurrencies, its dominance was close to 100%. As new cryptocurrencies came into existence (most notably Ethereum),",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Crypto Market Cap",
                        summary:
                            "This chart shows the total cryptocurrency market capitalization with logarithmic regression lines. The logarithmic regression lines follow the formula: y = 10^(a*ln(x) - b). Where x is the time in days starting from an offset and a and b are coefficients which are found by fitting the formula to the market capitalization data.",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Stablecoin Supply Ratio",
                        summary:
                            "The Stablecoin Supply Ratio (SSR) is equal to Bitcoin's market cap divided by the Stablecoin market cap. It can equivalently be interpreted as the ratio of Bitcoin supply and the stablecoin supply denoted in BTC. Its motivation is to quantify the extent of stablecoin buying power and estimate its potential to move the price of Bitcoin. For example, an SSR of 10 means that stablecoins can potentially buy 1 / 10 = 10% of Bitcoin's supply",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Bull Market Support Band",
                        summary:
                            "The bull market support band has historically acted as a support band in bull runs, as the name suggests. It refers to the band between the 20W simple moving average (SMA) and 21W exponential moving average (EMA). For BTC the price has often bounced off-, or rode a small distance from the BMSB until the end of the market cycle. For instance in the 2017 bull run Bitcoin had several 30% to 40% corrections to the support band",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Dominance",
                        summary:
                            "Bitcoin dominance, as its name implies, reflects the dominance of Bitcoin compared to the total market. Its calculation is the Asset Market Cap (supply * price) divided by the Total Market Cap (sum over all assets of asset supply * price) as a percentage. Dominance is best seen as a tool to give perspective of how the cryptoverse is evolving. At the start when bitcoin was the largest and only one of few cryptocurrencies, its dominance was close to 100%. As new cryptocurrencies came into existence (most notably Ethereum),",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Crypto Market Cap",
                        summary:
                            "This chart shows the total cryptocurrency market capitalization with logarithmic regression lines. The logarithmic regression lines follow the formula: y = 10^(a*ln(x) - b). Where x is the time in days starting from an offset and a and b are coefficients which are found by fitting the formula to the market capitalization data.",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Stablecoin Supply Ratio",
                        summary:
                            "The Stablecoin Supply Ratio (SSR) is equal to Bitcoin's market cap divided by the Stablecoin market cap. It can equivalently be interpreted as the ratio of Bitcoin supply and the stablecoin supply denoted in BTC. Its motivation is to quantify the extent of stablecoin buying power and estimate its potential to move the price of Bitcoin. For example, an SSR of 10 means that stablecoins can potentially buy 1 / 10 = 10% of Bitcoin's supply",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Bull Market Support Band",
                        summary:
                            "The bull market support band has historically acted as a support band in bull runs, as the name suggests. It refers to the band between the 20W simple moving average (SMA) and 21W exponential moving average (EMA). For BTC the price has often bounced off-, or rode a small distance from the BMSB until the end of the market cycle. For instance in the 2017 bull run Bitcoin had several 30% to 40% corrections to the support band",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Dominance",
                        summary:
                            "Bitcoin dominance, as its name implies, reflects the dominance of Bitcoin compared to the total market. Its calculation is the Asset Market Cap (supply * price) divided by the Total Market Cap (sum over all assets of asset supply * price) as a percentage. Dominance is best seen as a tool to give perspective of how the cryptoverse is evolving. At the start when bitcoin was the largest and only one of few cryptocurrencies, its dominance was close to 100%. As new cryptocurrencies came into existence (most notably Ethereum),",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Crypto Market Cap",
                        summary:
                            "This chart shows the total cryptocurrency market capitalization with logarithmic regression lines. The logarithmic regression lines follow the formula: y = 10^(a*ln(x) - b). Where x is the time in days starting from an offset and a and b are coefficients which are found by fitting the formula to the market capitalization data.",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: InfoCard(
                        title: "Stablecoin Supply Ratio",
                        summary:
                            "The Stablecoin Supply Ratio (SSR) is equal to Bitcoin's market cap divided by the Stablecoin market cap. It can equivalently be interpreted as the ratio of Bitcoin supply and the stablecoin supply denoted in BTC. Its motivation is to quantify the extent of stablecoin buying power and estimate its potential to move the price of Bitcoin. For example, an SSR of 10 means that stablecoins can potentially buy 1 / 10 = 10% of Bitcoin's supply",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  String? title;
  String? summary;

  InfoCard({
    Key? key,
    required this.title,
    required this.summary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return InformationPage();
          },
        ));
      },
      child: Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xFF1649FF), width: 4),
          color: Color(0xFF0E1A32),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    height: 50,
                    child: Text(
                      title!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    height: 100,
                    child: Text(
                      summary!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
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
