import 'dart:math';

import 'package:bmicalculator/constants/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool gender = true;
  double height = 80.0;
  int weight = 30;
  int age = 10;

  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
        Expanded(
            child: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    gender = true;
                  });
                },
                child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: gender ? Colors.white : primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 100,
                          color: gender ? Colors.black : Colors.white,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 30,
                            color: gender ? Colors.black : Colors.white,
                          ),
                        )
                      ],
                    )),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    gender = false;
                  });
                },
                child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: gender ? primaryColor : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 100,
                          color: gender ? Colors.white : Colors.black,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                              color: gender ? Colors.white : Colors.black,
                              fontSize: 30),
                        )
                      ],
                    )),
              ),
            ],
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Height',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.round().toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'CM',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Slider(
                    activeColor: Colors.grey[300],
                    thumbColor: Colors.redAccent,
                    value: height,
                    max: 300,
                    min: 80,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    })
              ],
            ),
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      const Text(
                        'Weight',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(weight.toString(),
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      const Spacer(),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[500],
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight > 30) {
                                      weight--;
                                    }
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[500],
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight >= 30) {
                                      weight++;
                                    }
                                  });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      const Text(
                        'Age',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(age.toString(),
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      const Spacer(),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[500],
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (age > 10) {
                                      age--;
                                    }
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[500],
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (age >= 10) {
                                      age++;
                                    }
                                  });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
        Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.redAccent,
          width: double.infinity,
          height: 60,
          child: Center(
              child: TextButton(
            onPressed: () {
              var result = weight / pow(height / 100, 2);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Column(
                  children: [
                    Text('Gender is ${gender ? "Male" : "Female"}'),
                    Text('Result is ${result.round().toString()}'),
                    Text('Age is ${age.toString()}'),
                  ],
                ),
                behavior: SnackBarBehavior.floating,
              ));
            },
            child: const Text(
              'CALCULATE',
              style: TextStyle(color: Colors.white),
            ),
          )),
        )
      ]),
    );
  }
}
