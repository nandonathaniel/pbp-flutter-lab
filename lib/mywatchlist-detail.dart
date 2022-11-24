import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/drawer.dart';

class MyWatchlistDetail extends StatefulWidget {
	const MyWatchlistDetail({super.key});
	
	@override
	State<MyWatchlistDetail> createState() => _MyWatchlistDetailState();
}

class _MyWatchlistDetailState extends State<MyWatchlistDetail> {
	@override
	Widget build(BuildContext context) {
		final MyWatchlist watch = ModalRoute.of(context)!.settings.arguments as WatchList;
		
		return Scaffold(
			appBar: AppBar(
				title: const Text('Detail'),
			),
			drawer: buildDrawer(context),
			body: Padding(
		    	padding: const EdgeInsets.all(20.0),
		    	child: Column(
				    mainAxisSize: MainAxisSize.max,
				    children: [
				        Center(
				        	child: Text(
					            watch.title,
					            style: const TextStyle(
					              fontSize: 24.0,
					              fontWeight: FontWeight.bold,
					            ),
				        	),
				        ),
				        const SizedBox(
				        	height: 20,
				        ),
				        Row(
				        	children: [
					            const Text(
						            "Release Date: ",
						            style: TextStyle(
						            	fontSize: 18.0,
						                fontWeight: FontWeight.bold,
						            ),
					            ),
					            Text(
					            	watch.releaseDate,
					            	style: const TextStyle(
					            		fontSize: 18.0,
					            	),
					            ),
				        	],
				        ),
				        Row(
					        children: [
					            const Text(
					            	"Rating: ",
					            	style: TextStyle(
					                	fontSize: 18.0,
					                	fontWeight: FontWeight.bold,
					            	),
					            ),
					            Text(
					            	"${watch.rating}/5.0",
					              	style: const TextStyle(
					                	fontSize: 18.0,
					            	),
					            ),
					        ],
				        ),
				        Row(
				        	children: [
				        		const Text(
				            		"Status: ",
				            		style: TextStyle(
				            			fontSize: 18.0,
				            			fontWeight: FontWeight.bold,
				              		),
				            	),
					            Text(
					              	watch.watched ? "Watched" : "Not Watched",
					              	style: const TextStyle(
					                	fontSize: 18.0,
					              	),
					            ),
				          	],
				        ),
				        Row(
				        	children: const [
				            	Text(
				              		"Review: ",
				              		style: TextStyle(
				                		fontSize: 18.0,
				                		fontWeight: FontWeight.bold,
				              		),
				            	),
				        	],
				        ),
				        Row(
				        	children: [
				            	Flexible(
				            		child: Text(
				                		watch.review,
				                		style: const TextStyle(
				                  			fontSize: 18.0,
				                		),
				              		),
				            	),
				          	],
				        ),
				        const Spacer(),
				        Align(
				          	alignment: Alignment.bottomCenter,
				          	child: ElevatedButton(
					            onPressed: () {
					            	Navigator.pop(context);
					            },
					            style: ElevatedButton.styleFrom(
					            	minimumSize: const Size.fromHeight(40),
					            ),
					            child: const Text(
					            	"Back",
					            ),
				          	),
				        ),
				    ],
		    	),
		  	),
		);
	}
}