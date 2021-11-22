import 'package:flutter/material.dart';
import 'package:list_country/countries_currency.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List countries = [];
    countries.add(Country(name: 'Australia', currency: 'AUD', flag: 'aus.png'));
    countries.add(Country(name: 'Bangladesh', currency: 'BDT', flag: 'bd.png'));
    countries.add(Country(name: 'Belgium', currency: 'EUR', flag: 'bel.png'));
    countries.add(Country(name: 'Brazil', currency: 'BRL', flag: 'bra.png'));
    countries.add(Country(name: 'Canada', currency: 'CAD', flag: 'can.png'));
    countries.add(Country(name: 'China', currency: 'CNY', flag: 'chi.png'));
    countries.add(Country(name: 'Finland', currency: 'EUR', flag: 'fin.png'));
    countries.add(Country(name: 'Germany', currency: 'EUR', flag: 'ger.png'));
    countries.add(Country(name: 'Japan', currency: 'JPY', flag: 'jap.png'));
    countries.add(Country(name: 'USA', currency: 'USD', flag: 'usa.png'));
    countries.add(Country(name: 'Norway', currency: 'NOK', flag: 'nor.png'));
    countries.add(Country(name: 'Nepal', currency: 'NPR', flag: 'nep.png'));

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          elevation: 0,
          title: Text('List of Countries Currency'),
          centerTitle: true,
        ),
    body: ListView.builder(itemBuilder: (BuildContext context, int index) =>Card(
    child: ListTile(
    title: Text(countries[index].name),
    subtitle: Text(countries[index].currency),
    leading: CircleAvatar(
    backgroundImage: AssetImage('assets/${countries[index].flag}'),
    ),
    ),
    ),
      itemCount: countries.length,
      ),
      ),
    );
  }
}
