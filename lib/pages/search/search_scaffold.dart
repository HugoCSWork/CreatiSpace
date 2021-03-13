import 'package:creatispace/app/search/item/search_item_bloc.dart';
import 'package:creatispace/app/search/user/search_user_bloc.dart';
import 'package:creatispace/app/search/workshop/search_workshop_bloc.dart';
import 'package:creatispace/pages/search/search_items_builder.dart';
import 'package:creatispace/pages/search/search_users_builder.dart';
import 'package:creatispace/pages/search/search_workshops_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScaffold extends StatefulWidget {
  @override
  _SearchScaffoldState createState() => _SearchScaffoldState();
}

class _SearchScaffoldState extends State<SearchScaffold> {
  bool isSearching = false;
  final searchController = TextEditingController();
  final optionController = TextEditingController(text: 'items');

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Widget buildView() {
    if(optionController.text == "workshops") {
      return SearchWorkshopBuilder();
    } else if(optionController.text == "users") {
      return SearchUserBuilder();
    } else {
      return SearchItemBuilder();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            style: TextStyle(color: Colors.white),
            controller: searchController,
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.white)
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                if(optionController.text == "workshops") {
                  context.read<SearchWorkshopBloc>().add(SearchWorkshopEvent.search(searchController.text));
                } else if(optionController.text == "users") {
                  context.read<SearchUserBloc>().add(SearchUserEvent.search(searchController.text));
                } else {
                  context.read<SearchItemBloc>().add(SearchItemEvent.search(searchController.text));
                }
              }
            ),
          ]
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: Text(
                      "Items",
                      style: TextStyle(
                          fontWeight: optionController.text == "items"
                              ? FontWeight.bold
                              : FontWeight.normal
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        optionController.text = "items";
                        searchController.text = "";
                      });
                    },
                  ),
                  Container(
                    height: 30,
                    width: 1.3,
                    color: Colors.blue[200],
                  ),
                  TextButton(
                    child: Text(
                        "Workshops",
                        style: TextStyle(
                            fontWeight: optionController.text == "workshops"
                                ? FontWeight.bold
                                : FontWeight.normal
                        )
                    ),
                    onPressed: () {
                      setState(() {
                        optionController.text = "workshops";
                        searchController.text = "";
                      });
                    },
                  ),
                  Container(
                    height: 30,
                    width: 1.3,
                    color: Colors.blue[200],
                  ),
                  TextButton(
                    child: Text(
                        "Users",
                        style: TextStyle(
                            fontWeight: optionController.text == "users"
                                ? FontWeight.bold
                                : FontWeight.normal
                        )
                    ),
                    onPressed: () {
                      setState(() {
                        optionController.text = "users";
                        searchController.text = "";
                      });
                    },
                  ),
                ],
              ),

            ),
            buildView()
          ],
        ),
    );
  }
}
