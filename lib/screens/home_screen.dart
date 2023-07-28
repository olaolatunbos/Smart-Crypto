import 'package:crypto_app/screens/information_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crypto_app/blocs/crypto/crypto_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E1A32),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0E1A32),
        // leading: Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
        //   child: Image.asset(
        //     "img/Logo.png",
        //     scale: 2.5,
        //   ),
        // ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.fromLTRB(30, 55, 15, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Coins",
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return InformationListPage();
                      },
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
        // actions: [
        //   Container(
        //     width: 40,
        //     height: 40,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       color: Color(0xFF1C3254),
        //     ),
        //     child: IconButton(
        //       hoverColor: Color(0xFF1649FF),
        //       icon: Icon(Icons.notification_add),
        //       color: Color(0xFFC0C9EA),
        //       onPressed: () {
        //         Navigator.push(context, MaterialPageRoute<void>(
        //           builder: (BuildContext context) {
        //             return InformationPage();
        //           },
        //         ));
        //       },
        //     ),
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                  color: Color(0xFF1649FF),
                  borderRadius: BorderRadius.circular(35)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cryptocurrency?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 350,
                      height: 200,
                      child: Text(
                        "At Into the Cryptoverse, we understand that the crypto market can sometimes seem like a complex and bewildering space. That is why we have made it our mission to simplify this intricate world and bring clarity to the often-confusing jargon and concepts associated with cryptocurrencies. Whether you’re a seasoned trader or just getting started, our platform is designed to cater to your needs and enhance your understanding of this revolutionary technology.Whether you’re a seasoned trader or just getting started, our platform is designed to cater to your needs and enhance your understanding of this revolutionary technology",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0xFF0E1A32),
              child: BlocBuilder<CryptoBloc, CryptoState>(
                builder: (context, state) {
                  switch (state.status) {
                    case CryptoStatus.loaded:
                      return RefreshIndicator(
                        color: Theme.of(context).accentColor,
                        onRefresh: () async {
                          context.read<CryptoBloc>().add(RefreshCoins());
                        },
                        child: NotificationListener<ScrollNotification>(
                          onNotification: (notification) =>
                              _onScrollNotification(notification),
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(20),
                            controller: _scrollController,
                            itemCount: state.coins.length,
                            itemBuilder: (BuildContext context, int index) {
                              final coin = state.coins[index];
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 160,
                                  width: 470,
                                  color: Color(0xFF102341),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.network(
                                              'https://www.cryptocompare.com${coin.image}',
                                              scale: 5,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    text: TextSpan(
                                                      text: coin.fullName,
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 25),
                                                    )),
                                                Text(
                                                  coin.name,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontSize: 25),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '\$${coin.price.toStringAsFixed(2)}',
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 25),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "img/graph2.png",
                                            scale: 0.83,
                                          )
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const Divider(),
                          ),
                        ),
                      );
                    case CryptoStatus.error:
                      return Center(
                        child: Text(
                          state.failure.message,
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    default:
                      return Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(
                              Theme.of(context).accentColor),
                        ),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _onScrollNotification(ScrollNotification notif) {
    if (notif is ScrollEndNotification &&
        _scrollController!.position.extentAfter == 0) {
      context.read<CryptoBloc>().add(LoadMoreCoins());
    }
    return false;
  }
}
