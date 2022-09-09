import 'package:flutter/material.dart';

import 'biz_jonundo.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Card makeDashboardItem(String title, String img, int index) {
    return Card(
      margin: const EdgeInsets.all(18),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Color(0xff01A560),
              Colors.deepPurple,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              //1.item
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const BizJonundo()),
                ),
              );
            }
            if (index == 1) {
              //2.item
            }
            if (index == 2) {
              //3.item
            }
            if (index == 3) {
              //4.item
            }
            if (index == 4) {
              //5.item
            }
            if (index == 5) {
              //6.item
            }
            if (index == 6) {
              //7.item
            }
            if (index == 7) {
              //8.item
            }
            if (index == 8) {
              //9.item
            }
            if (index == 9) {
              //10.item
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  img,
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ветеринардык врач',
                        style: TextStyle(
                          fontSize: 15,
                          // color: kSecondaryTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Жорубаев Семетей',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    foregroundImage: AssetImage('assets/icons/sem.png'),
                    radius: 35,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeDashboardItem('Биз жөнүндө', 'assets/icons/biz.png', 0),
                makeDashboardItem('Тоют', 'assets/icons/toiut.png', 1),
                makeDashboardItem('Уруктандыруу', 'assets/icons/uruk.png', 2),
                makeDashboardItem('Оору', 'assets/icons/darylo.png', 3),
                makeDashboardItem('Бодо мал', 'assets/icons/ui.png', 4),
                makeDashboardItem('Кой Эчкилер', 'assets/icons/koi.png', 5),
                makeDashboardItem('Жылкылар', 'assets/icons/at.png', 6),
                makeDashboardItem('Тоок', 'assets/icons/took.png', 7),
                makeDashboardItem('Ветеринар', 'assets/icons/vet.png', 8),
                makeDashboardItem('Байланышуу', 'assets/icons/tel.png', 9),
              ],
            ))
          ],
        ),
      ),
    );
  }
}




 // Padding(
          //   padding: const EdgeInsets.only(left: 16, right: 16),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Row(
          //         children: [
          //           Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: const [
          //               Text(
          //                 'Жорубаев Семетей',
          //                 style: TextStyle(
          //                   fontSize: 20,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 4,
          //               ),
          //               Text(
          //                 'Ветеринардык врач',
          //                 style: TextStyle(
          //                   color: Colors.grey,
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
