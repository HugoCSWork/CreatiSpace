import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/app/item/item_watcher/item_watcher_bloc.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestItems extends StatelessWidget {
  final UserProfileData data;
  final bool view;
  const TestItems({Key key, @required this.data, @required this.view}) : super(key: key);

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
  final UserProfileData data;
  final Item item;

  String getTextValue() {
    if (item.purchasable.getOrCrash())
      return '£${item.price.getOrCrash().toStringAsFixed(2)}';
    else
      return 'Non-Purchasable';
  }

  const ImageList({Key key, @required this.data, @required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 2.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          shadowColor: Colors.blue.withOpacity(.05),
          child: Column(
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
                            margin: const EdgeInsets.all(1),
                            child: Container()
                        ),
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    )
                ),
                title: GestureDetector(
                  child: Text(data.username.getOrCrash()),
                  onTap: (){
                  },
                ),
              ),
              Material(
                elevation: 0.5,
                child: SizedBox(
                  height: 400,
                  width:  MediaQuery.of(context).size.width - 30,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: item.images.length,
                    itemBuilder: (context, index) {
                      return CachedNetworkImage(
                        imageUrl: item.images.getOrCrash()[index].url.getOrCrash(),
                        fit: BoxFit.fitWidth,
                        width: MediaQuery.of(context).size.width - 30,
                        height: 400,
                        placeholder: (context, url) => Center(
                          child: Container(
                              width: 30,
                              height: 30,
                              margin: const EdgeInsets.all(5),
                              child:  Container()
                          ),
                        ),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Container(
                      padding: EdgeInsets.fromLTRB(10, 8, 0, 5),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item.name.getOrCrash(),
                        style: TextStyle(
                            fontSize: 20
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      getTextValue(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                alignment: Alignment.centerLeft,
                child: Text(
                    item.description.getOrCrash()
                ),
              ),
              SizedBox(height: 16)
            ],
          ),
        ),
      ),
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

