import 'package:flutter/material.dart';
import 'package:tribes_crowdfunding_interview_project/class/project_funding_info.dart';
import 'package:tribes_crowdfunding_interview_project/styles/text_style.dart';

class UserSearchDelegate extends SearchDelegate<User?> {
  final Function(User)? onSelect;
  UserSearchDelegate({this.onSelect});
  List<User> listUser = [
    User(name: "Member A", token: "0x1a2b3c4d"),
    User(name: "Member B", token: "0x1a2b3c4d"),
    User(name: "Member C", token: "0x1a2b3c4d"),
    User(name: "Member D", token: "0x1a2b3c4d"),
    User(name: "Member E", token: "0x1a2b3c4d"),
    User(name: "Member F", token: "0x1a2b3c4d"),
    User(name: "Member G", token: "0x1a2b3c4d"),
    User(name: "Member H", token: "0x1a2b3c4d"),
    User(name: "Member X", token: "0x1a2b3c4d"),
    User(name: "Member Y", token: "0x1a2b3c4d"),
    User(name: "Member Z", token: "0x1a2b3c4d"),
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(
          Icons.clear,
        ),
      )
    ];
  }

  @override
  String get searchFieldLabel => 'wallet address or .eth';

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<User> matchQuery = [];
    for (var user in listUser) {
      if (user.name!.toLowerCase().contains(query.toLowerCase()) ||
          user.token!.contains(query.toLowerCase())) {
        matchQuery.add(user);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            onTap: () {
              if (onSelect != null) {
                onSelect!(result);
              }
            },
            title: Text(
              "${result.name}",
              style: TextStyling.bodyBold,
            ),
            subtitle: Text(
              "${result.token}",
              style: TextStyling.secondaryAlt,
            ),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<User> matchQuery = [];
    for (var user in listUser) {
      if (user.name!.toLowerCase().contains(query.toLowerCase()) ||
          user.token!.contains(query.toLowerCase())) {
        matchQuery.add(user);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            onTap: () {
              if (onSelect != null) {
                onSelect!(result);
              }
            },
            title: Text(
              "${result.name}",
              style: TextStyling.bodyBold,
            ),
            subtitle: Text(
              "${result.token}",
              style: TextStyling.secondaryAlt,
            ),
          );
        });
  }
}
