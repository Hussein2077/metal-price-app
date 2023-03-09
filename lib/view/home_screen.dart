import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'TODAY   ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  shadows: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(2, 2),
                        color: Colors.white54)
                  ]),
            ),
            Text(
              'PRICE',
              style: TextStyle(
                color: Colors.yellow[900],
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 25),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/gold1.jpg',
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'GOLD',
                  style:
                      TextStyle(fontSize: 25, color: Colors.yellow, shadows: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(1, 1),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '800\$',
                  style:
                      TextStyle(fontSize: 25, color: Colors.yellow, shadows: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(1, 1),
                    )
                  ]),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/silver1.jpg',
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'SILVER',
                  style: TextStyle(fontSize: 25, color: Colors.white, shadows: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(1, 1),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '800\$',
                  style: TextStyle(fontSize: 25, color: Colors.white, shadows: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(1, 1),
                    )
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
