import 'package:anuncio_magazine/models/contact.dart';
import 'package:anuncio_magazine/provider/list_of_description.dart';
import 'package:anuncio_magazine/style.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.jpg"),
        title: Text("Ofertas do dia"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/linha.jpg",
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: builder,
              itemCount: listOfDescripition.length,
              separatorBuilder: (_, index) {
                return Divider();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget builder(BuildContext _, int Index) {
    Contact _contact = listOfDescripition.elementAt(Index);
    return ListTile(
      leading: Image.asset(
        _contact.photo,
      ),
      trailing: IconButton(
        icon: (_contact.isFavorite)
            ? Icon(
                Icons.favorite,
                color: pinkTheme,
              )
            : Icon(
                Icons.favorite_outline,
                color: pinkTheme,
              ),
        onPressed: () {},
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _contact.name,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            _contact.description,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            _contact.price,
            style: TextStyle(
              color: blueTheme,
              fontSize: 18,
            ),
          ),
          Text(
            _contact.piecemeal,
            style: TextStyle(
              color: blueTheme,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
