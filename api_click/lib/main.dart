import 'dart:convert' as convert;
import 'package:api_click/allteams.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Teams.dart';

void main() {
  runApp(
    MaterialApp(
      home: ApiCall(),
    ),
  );
}

class ApiCall extends StatefulWidget {
  ApiCall({Key? key}) : super(key: key);

  @override
  _ApiCallState createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  late Future<Teams> futureTeams;
  List<Widget> list = [];

  @override
  void initState() {
    super.initState();
    futureTeams = GetApi();
  }

  Future<Teams> GetApi() async {
    var url = Uri.parse("https://www.balldontlie.io/api/v1/teams");
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return Teams.fromJson(convert.jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  void displayData() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AllTeams(list: list),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BasketBall Teams"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 200,
            height: 600,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FutureBuilder<Teams>(
                    future: futureTeams,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        for (var i in snapshot.data!.data) {
                          list.add(
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Expanded(
                                    child: Center(
                                      child: Text(
                                        i.fullName.toString(),
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      } else if (snapshot.hasError) {
                        print(snapshot.error);
                        return Text("${snapshot.error}");
                      }
                      return CircularProgressIndicator();
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    displayData();
                  },
                  child: Text("Get All Teams"),
                ),
              ),
            ],
          ),
        ],
      ),
      
    );
  }
}
