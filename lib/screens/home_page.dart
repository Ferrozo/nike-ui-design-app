import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/search_widget.dart';
import 'details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  showDeatilScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const DetailsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.grey,
                size: 25,
              ),
            ),
            Image.asset(
              'src/assets/nike.png',
              width: 45,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.local_mall_outlined,
                color: Color.fromARGB(214, 15, 15, 15),
                size: 28,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            const SearchWidget(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 260,
              child: Image.asset('src/assets/big_shoes02.png'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Nike',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 2, 55, 98),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Collection',
                style: TextStyle(
                  fontSize: 38,
                  color: Color.fromARGB(187, 72, 72, 72),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'On Trend',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 2, 55, 98),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('1/10',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                        width: 135,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 22,
                              height: 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 2, 55, 98),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i <= 2; i++)
                    InkWell(
                      onTap: () {
                        showDeatilScreen();
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      left: 20,
                                      top: 20,
                                    ),
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 2, 55, 98),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // top: 0.1,
                                  bottom: 50,
                                  left: 30,
                                  child: SizedBox(
                                    width: 140,
                                    child: Image.asset(
                                      i == 0
                                          ? 'src/assets/big_shoes.png'
                                          : i == 1
                                              ? 'src/assets/model101.png'
                                              : 'src/assets/big_shoes.png',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 40,
                                  left: 10,
                                  child: i == 1
                                      ? Container(
                                          height: 25,
                                          width: 60,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.orange,
                                          ),
                                          child: Text('SALE'),
                                        )
                                      : Container(),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 25,
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            '\$',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            i == 0
                                                ? '329'
                                                : i == 1
                                                    ? '100'
                                                    : '100',
                                            style: const TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(width: 50),
                                          const Icon(Icons.favorite,
                                              color: Colors.red)
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(i == 0 ? 'Nike GTX 2' : 'Nike GTX',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 2, 55, 98),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
