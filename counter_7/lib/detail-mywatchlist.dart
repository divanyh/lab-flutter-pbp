import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist_model.dart';
import 'package:counter_7/drawer.dart';

class detailMoviePage extends StatelessWidget{
  detailMoviePage(this.movie);

  final Movie movie;

  _showTitle(){
    return Text(
      movie.fields.filmTitle,
      style: TextStyle(
          fontWeight: FontWeight.bold
      ),
    );
  }

  _showDetailRelease(){
    return Text(
      "Release date: ",
      style: TextStyle(
          fontWeight: FontWeight.bold
      ),
    );
  }

  _showRelease(){
    return Text(
        movie.fields.filmRelease
    );
  }

  _showDetailRating(){
    return Text(
      "Rating: ",
      style: TextStyle(
          fontWeight: FontWeight.bold
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // leading: const BackButton(),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Detail'),
      ),
      drawer: DrawerSection(),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _showTitle()
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      _showDetailRelease(),
                      _showRelease()
                    ],
                  ),
                  Row(
                    children: [
                      _showDetailRating(),
                      Text(movie.fields.filmRating.toString())
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Status: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(movie.fields.watchStatus)
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Review: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Expanded(child:
                      Text(movie.fields.filmReview))
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: (){Navigator.pop(context);},
                      child: Text("Back"),
                    ),
                  )
                ]),
          )
      ),
    );
    }
  }

