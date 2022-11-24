import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/util/fetch_watchlist.dart';
import 'package:counter_7/mywatchlist-detail.dart';


class MyWatchListPage extends StatefulWidget {
	const MyWatchListPage({super.key});
	
	@override
	State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
		    	title: const Text('MyWatchList'),
			),
			drawer: const DrawerWidget(),
			body: FutureBuilder<List<MyWatchList>>(
				future: fetchMyWatchList(),
                builder: (context, AsyncSnapshot<List<MyWatchList>> snapshot) {
                    if (snapshot.data == null) {
                        return const Center(child: CircularProgressIndicator());
                    } 
                    else {
                        if (!snapshot.hasData) {
                            return Column(
                                children: const [
                                    Text(
                                        "Tidak ada watch list :(",
                                        style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                                    ),
                                    SizedBox(height: 8),
                                ],
                            );
                        }
                        else {
                            return ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (_, index) => InkWell(
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => MyWatchlistDetail(
                                              title: snapshot.data![index].fields.title,
                                              releaseDate: snapshot.data![index].fields.releaseDate,
                                              rating: snapshot.data![index].fields.rating,
                                              watched: snapshot.data![index].fields.watched,
                                              review: snapshot.data![index].fields.review,
                                              )),
                                        );
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                        padding: const EdgeInsets.all(20.0),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15.0),
                                            boxShadow: [
                                                BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 1,
                                                blurRadius: 1,
                                                offset: const Offset(0, 2),
                                                )
                                            ],
                                        ),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                                Text(
                                                    snapshot.data![index].fields.title,
                                                    style: const TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ),
                            );
                        }
                    }
                },
		  	),
		);
	}
}