import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        elevation: 0,
        title: Row(
          children: [
            const Spacer(),
            Image.asset(
              'src/assets/nike.png',
              width: 45,
            ),
            const Spacer(),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 22,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 232, 162, 9),
                      ),
                      child: const Text('SALE',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        )),
                  ],
                ),
              ),
              SizedBox(
                child: Image.asset('src/assets/model201.png'),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '360',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.pinch,
                        size: 15,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 7,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5)))
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Nike GTX',
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 55, 98),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                      child: Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        Icon(
                          Icons.star,
                          size: 24,
                          color: i != 4
                              ? Color.fromARGB(255, 248, 172, 7)
                              : Colors.grey.withOpacity(0.5),
                        )
                    ],
                  ))
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'The Nike GTX Shoe borrows design lines from the heritage runners like the Nike React Technology.',
                style: TextStyle(
                  height: 1.6,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromARGB(185, 158, 158, 158),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Size',
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 35, 63),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Container(
                        margin: const EdgeInsets.only(left: 4),
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: i == 3
                              ? const Color.fromARGB(255, 2, 55, 98)
                              : Colors.transparent,
                          border: Border.all(
                              width: 2,
                              color: i != 3
                                  ? const Color.fromARGB(255, 2, 55, 98)
                                  : Colors.transparent),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                            '${i == 0 ? 5 : i == 1 ? 5.5 : i == 2 ? 6 : i == 3 ? 6.5 : 7}',
                            style: TextStyle(
                                fontSize: 20,
                                color: i == 3
                                    ? Color.fromARGB(192, 248, 182, 40)
                                    : const Color.fromARGB(255, 2, 55, 98))),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      height: 7,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Review 39',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 2, 55, 98),
                          ),
                        ),
                        SizedBox(
                          width: 160,
                          child: Stack(
                            children: [
                              for (int i = 0; i <= 3; i++)
                                Positioned(
                                  left: i != 0 ? i * 38 : null,
                                  child: CircleAvatar(
                                      radius: 26,
                                      child: Image.asset(
                                        'src/assets/avatar0${i}.png',
                                      )),
                                ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.02),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '\$',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '329',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 2, 55, 98),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 2, 55, 98),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          '+ Add To Cart',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(192, 248, 182, 40),
                            fontSize: 20,
                          ),
                        ),
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
