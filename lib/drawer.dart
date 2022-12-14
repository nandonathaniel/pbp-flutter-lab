import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/mywatchlist.dart';

class DrawerWidget extends StatelessWidget {
    const DrawerWidget({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Drawer(
            child: Column(
                children: [
                    ListTile(
                        title: const Text('counter_7'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyHomePage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('Tambah Budget'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyFormPage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('Data Budget'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyDataPage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('My Watch List'),
                        onTap: () {
                            // Route menu ke halaman Data
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                            );
                        },
                    ),
                ],
            ),
        );
    }
}