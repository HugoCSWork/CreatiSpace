import 'package:auto_route/auto_route.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/app/search/user/search_user_bloc.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchUserBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchUserBloc, SearchUserState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) =>
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: const Center(child: CircularProgressIndicator()),
                ),
              loadSuccess: (state) {
                if(state.items.size == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: const Text("No users related to that search"),
                  );
                } else {
                  return Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return SearchUsers(data: state.items.asList()[index]);
                      },
                      itemCount: state.items.size,
                    ),
                  );
                }

              },
              loadFailure:(_) => Container(),
          );
        },
    );
  }
}

class SearchUsers extends StatelessWidget {

  final UserProfileData data;

  const SearchUsers({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      splashColor: Colors.blue,
      onTap: () {
        FocusManager.instance.primaryFocus.unfocus();
        ExtendedNavigator.of(context).push(Routes.peerProfileScaffold, arguments: PeerProfileScaffoldArguments(
            id: data.id
        ));
      },
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 4, right: 16, top: 12, bottom: 8),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      CircularProfileAvatar(
                          '',
                          radius: 25,
                          child: Image(
                            image: AssetImage(
                                'assets/images/placeholder_profile_male.jpg'
                            ),
                          )
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                data.username.getOrCrash(),
                                style: TextStyle(
                                    fontSize: 16
                                  ),
                              ),
                              SizedBox(height: 4),
                              Text(data.description.getOrCrash(),
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

