import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metal_price/controller/cubit.dart';
import 'package:metal_price/controller/states.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getGoldPrice()..getSilverPrice(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
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
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.yellow,
                          shadows: [
                            BoxShadow(
                              color: Colors.yellow,
                              offset: Offset(1, 1),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ConditionalBuilder(
                      condition: state is! LoadingState,
                      builder: (context)=>Text(
                        '${AppCubit.get(context).gold!.round()} EGP',
                        style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                color: Colors.yellow,
                                offset: Offset(1, 1),
                              )
                            ]),
                      ),
                      fallback: (context)=>const Center(child: CircularProgressIndicator(
                        color: Colors.yellow,
                      ),),
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
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              color: Colors.yellow,
                              offset: Offset(1, 1),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     ConditionalBuilder(
                       condition: state is! LoadingState,
                       builder: (context)=>Text(
                         '${AppCubit.get(context).silver!.round()} EGP',
                         style: const TextStyle(
                             fontSize: 25,
                             color: Colors.white,
                             shadows: [
                               BoxShadow(
                                 color: Colors.yellow,
                                 offset: Offset(1, 1),
                               )
                             ]),
                       ),
                       fallback: (context)=>const Center(child: CircularProgressIndicator(
                         color: Colors.white,
                       ),),
                     ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
