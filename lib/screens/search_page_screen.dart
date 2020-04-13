import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

import 'package:three_sub/models/products.dart';
import 'package:three_sub/screens/add_subscription_detail_page_screen.dart';
import 'package:three_sub/widgets/big_navigation_bar.dart';

class SearchNewSubscriptionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchNewSubScriptionState();
  }
}

class _SearchNewSubScriptionState extends State<SearchNewSubscriptionScreen> {
  // Style
  final kTopBoxDropShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0x80FFFFFF),
          blurRadius: 6,
          spreadRadius: 0.5,
          offset: Offset(-3, -3)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  final kBottomBoxDropShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0xB3D1CDC7),
          blurRadius: 6,
          spreadRadius: 0.5,
          offset: Offset(3, 3)),
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  Future<List<Product>> _search(String _searchText) async {
    await Future.delayed(Duration(seconds: 1));
    List tempList = new List<Product>();

    for (int i = 0; i < productList.length; i++) {
      if (productList[i]
          .name
          .toLowerCase()
          .contains(_searchText.toLowerCase())) {
        tempList.add(productList[i]);
      }
    }
    // filteredNames = tempList;
    if (_searchText == "empty") return [];
    if (_searchText == "all") return productList;
    if (_searchText == "error") throw Error();

    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: BigTitleNavigationBar("Add Subscriptions"),
          ),
          body: Material(
            color: Theme.of(context).backgroundColor,
            // color: Colors.red,
            child: Container(
              // decoration: kBottomBoxInnerDropShadow,
              child: Container(
                // decoration: kTopBoxInnerDropShadow,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    SearchBar<Product>(
                      icon: null,
                      searchBarPadding: EdgeInsets.symmetric(horizontal: 30),
                      // header: Text("Search"),
                      searchBarStyle: SearchBarStyle(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        backgroundColor: Color(0x80D1CDC7),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "Search subscriptions here",
                      hintStyle: TextStyle(color: Colors.grey),
                      textStyle: Theme.of(context).textTheme.body1,
                      shrinkWrap: false,
                      minimumChars: 1,
                      // mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      placeHolder: Center(child: Text("Placeholder Widget")),
                      // buildSuggestion: _buildSuggestion,
                      suggestions: recentProductListSearch,
                      onSearch: _search,
                      onItemFound: (Product product, int index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(30, 15, 30, 10),
                          child: Container(
                            decoration: kBottomBoxDropShadow,
                            child: Container(
                              decoration: kTopBoxDropShadow,
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).backgroundColor,
                                  border: Border.all(
                                      color: Color(0x33FFFFFF), width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Image(
                                        image: AssetImage("assets/spotify.png"),
                                        width: 35,
                                        height: 35),
                                  ),
                                  title: Text(
                                    product.name,
                                    style: Theme.of(context).textTheme.body1,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              AddSubscriptionDetailScreen()),
                                      // (Route<dynamic> route) => false,
                                    );
                                  },
                                  // subtitle: Text(product.description),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      onError: (error) {
                        return Center(
                          child: Text("Error occured: $error"),
                        );
                      },
                      emptyWidget: Center(child: Text("No item found")),
                    ),
                    Container(
                      // Bottom
                      width: double.infinity,
                      height: 120,
                      color: Theme.of(context).backgroundColor,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(31, 0, 31, 15),
                          child: Container(
                            decoration: kTopBoxDropShadow,
                            child: Container(
                              decoration: kBottomBoxDropShadow,
                              child: Container(
                                  width: double.infinity,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).backgroundColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Center(child: Text("Create Your Subscription"))),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // @override
  // Widget buildSuggestions(BuildContext context) {
  // show when someone search for sth
  // final suggestionList = query.isEmpty
  //     ? recentSearch
  //     : apps.where((p) => p.startsWith(query)).toList();

  // return ListView.builder(
  //     itemBuilder: (context, index) => ListTile(
  //           onTap: () {
  //             showResults(context);
  //           },
  //           leading: Icon(Icons.location_city),
  //           title: RichText(
  //             text: TextSpan(
  //               text: suggestionList[index].substring(0, query.length),
  //               style: TextStyle(
  //                   color: Colors.black, fontWeight: FontWeight.bold),
  //               children: [
  //                 TextSpan(
  //                   text: suggestionList[index].substring(query.length),
  //                   style: TextStyle(color: Colors.grey),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //     itemCount: suggestionList.length);
  // }
// }

}
