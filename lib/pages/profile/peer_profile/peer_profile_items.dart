import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/app/item/item_watcher/item_watcher_bloc.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/profile/profile_data/peer_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PeerProfileItems extends StatelessWidget {
  final PeerProfileData data;
  final bool view;
  const PeerProfileItems({Key key, @required this.data, @required this.view}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemWatcherBloc, ItemWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Container(),
              loadSuccess: (state) => Container(
                margin: EdgeInsets.all(10),
                child: view
                    ? Column(
                    children: state.items.asList().map((Item item) {
                      return ImageList(item: item, data: data);
                    }).toList())
                    : GridView.count(
                    padding: EdgeInsets.only(top: 10),
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    mainAxisSpacing: 1.5,
                    crossAxisSpacing: 1.5,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: state.items.asList().map((Item item) {
                      return GridTile(child: ImageTile(item));
                    }).toList()),
              ),
              loadFailure: (_) =>  Container()
          );
        }
    );
  }
}


class ImageList extends StatelessWidget {
  final PeerProfileData data;
  final Item item;

  const ImageList({Key key, @required this.data, @required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: CircularProfileAvatar('',
              radius: 15,
              child: CachedNetworkImage(
                imageUrl: data.profileImageURL.getOrCrash(),
                fit: BoxFit.fill,
                placeholder: (context, url) => Center(
                  child: Container(
                      width: 30,
                      height: 30,
                      margin: const EdgeInsets.all(5),
                      child: Container()
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )
          ),
          title: GestureDetector(
            child: Text(data.username.getOrCrash()),
            // TODO Go to profile page
            onTap: (){},
          ),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              item.name.getOrCrash(),
              style: TextStyle(
                  fontSize: 20
              ),
            )
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: item.images.getOrCrash()[0].url.getOrCrash(),
              fit: BoxFit.fitWidth,
              // width: MediaQuery.of(context).size.width,
              // height: 200,
              placeholder: (context, url) => Center(
                child: Container(
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(5),
                    child:  Container()
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ],
        ),
        Container(
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            child: Text(
                item.description.getOrCrash()
            )
        ),
      ],
    );
  }
}

class ImageTile extends StatelessWidget {
  final Item imagePost;

  ImageTile(this.imagePost);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: CachedNetworkImage(
        imageUrl: imagePost.images.getOrCrash()[0].url.getOrCrash(),
        fit: BoxFit.cover,
        placeholder: (context, url) => Center(
          child: Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.all(5),
              child: const CircularProgressIndicator()
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}

