import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/app/profile/profile_actor/profile_actor_bloc.dart';
import 'package:creatispace/domain/profile/profile_data/peer_profile.dart';
import 'package:creatispace/pages/profile/peer_profile/peer_profile_items.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PeerProfile extends StatefulWidget {

  final PeerProfileData data;
  final String id;
  const PeerProfile({Key key, this.data, this.id}) : super(key: key);

  @override
  _PeerProfileState createState() => _PeerProfileState(isFollowing: data.isFollowing);
}

class _PeerProfileState extends State<PeerProfile> {
  bool viewChoice = false;
  bool isFollowing;

  _PeerProfileState({ @required bool isFollowing}) {
    this.isFollowing = isFollowing;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileActorBloc, ProfileActorState>(
          listener: (context, state) {
            state.maybeMap(
                followUpdateFailure: (_) => FlushbarHelper.createError(
                  duration: const Duration(seconds: 5),
                  message: "Error updating follow, try again later",
                ).show(context),
                followUpdateSuccess: (_) {
                  setState(() {
                    isFollowing = !isFollowing;
                  });
                  return FlushbarHelper.createSuccess(
                    duration: const Duration(seconds: 5),
                    message: isFollowing ? "Following ${widget.data.username.getOrCrash()}" : "Unfollowed ${widget.data.username.getOrCrash()}" ,
                  ).show(context);
                },
                orElse: () => {}
            );
          },
      child: Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              child: Center(
                  child: CachedNetworkImage(
                    imageUrl: widget.data.backgroundImageURL.getOrCrash(),
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    placeholder: (context, url) => Center(
                      child: Container(
                          width: 30,
                          height: 30,
                          margin: const EdgeInsets.all(5),
                          child: const CircularProgressIndicator()
                      ),
                    ),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  )
              ),
            ),
            SizedBox(height: 45),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    widget.data.username.getOrCrash(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom:8),
                  child: Text(widget.data.description.getOrCrash()),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom:8),
                    child: TextButton(
                        onPressed: () {
                          final itemActorBloc = context.read<ProfileActorBloc>();
                          itemActorBloc.add(ProfileActorEvent.followUpdate(isFollowing, widget.id));

                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue[200])
                          ),
                        ),
                        child: Text(isFollowing ? "Unfollow" : "+ Follow")
                    )
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),

                    boxShadow: [ BoxShadow(
                      color: Colors.blue[200].withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(1, 3),
                    )],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        child: Text(
                          "Grid",
                          style: TextStyle(
                              fontWeight: !viewChoice
                                  ? FontWeight.bold
                                  : FontWeight.normal
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            viewChoice = false;
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
                            "List",
                            style: TextStyle(
                                fontWeight: viewChoice
                                    ? FontWeight.bold
                                    : FontWeight.normal
                            )
                        ),
                        onPressed: () {
                          setState(() {
                            viewChoice = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            PeerProfileItems(data: widget.data, view: viewChoice),
          ],
        ),
        Positioned(
            top: 150, // (background container size) - (circle height / 2)
            child: CircularProfileAvatar('',
                radius: 45,
                child: CachedNetworkImage(
                  imageUrl: widget.data.profileImageURL.getOrCrash(),
                  fit: BoxFit.fitWidth,
                  placeholder: (context, url) => Center(
                    child: Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.all(5),
                        child: const CircularProgressIndicator()
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )
            )
        ),
        // Positioned(
        //     top: 180, //
        //     left: 30,// (background container size) - (circle height / 2)
        //     child: GestureDetector(
        //       onTap: () =>
        //           ExtendedNavigator.of(context).push(Routes.userFriendsScaffold, arguments: UserFriendsScaffoldArguments(
        //               followOrFollowing: false
        //           )),
        //       child: Container(
        //         height: 40,
        //         width: 100,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(18.0),
        //             color: Colors.blue[200]
        //         ),
        //         child: Center(
        //           child: Text(
        //             "Following\n${widget.data.following.getOrCrash()}",
        //             textAlign: TextAlign.center,
        //             style: TextStyle(
        //                 fontWeight: FontWeight.bold
        //             ),
        //           ),
        //         ),
        //       ),
        //     )
        // ),
        // Positioned(
        //     top: 180, //
        //     right: 30,// (background container size) - (circle height / 2)
        //     child: GestureDetector(
        //       onTap: () =>
        //           ExtendedNavigator.of(context).push(Routes.userFriendsScaffold, arguments: UserFriendsScaffoldArguments(
        //               followOrFollowing: true)
        //           ),
        //       child: Container(
        //         height: 40,
        //         width: 100,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(18.0),
        //             color: Colors.blue[200]
        //         ),
        //         child: Center(
        //           child: Text(
        //             "Followers\n${widget.data.followers.getOrCrash()}",
        //             textAlign: TextAlign.center,
        //             style: TextStyle(
        //                 fontWeight: FontWeight.bold
        //             ),
        //           ),
        //         ),
        //       ),
        //     )
        // ),
      ],
    ),
    );
  }
}
