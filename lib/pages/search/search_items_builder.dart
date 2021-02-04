import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/app/search/item/search_item_bloc.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchItemBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchItemBloc, SearchItemState>(
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
                padding: const EdgeInsets.only(top: 70.0),
                child: const Text("No posts related to that search"),
              );
            } else {
              return Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return SearchItems(data: state.items.asList()[index]);
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

class SearchItems extends StatelessWidget {

  final HomeItem data;

  const SearchItems({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircularProfileAvatar('',
                radius: 15,
                child: CachedNetworkImage(
                  imageUrl: data.profileImageURL,
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
              child: Text(data.username),
              // TODO Go to profile page
              onTap: (){},
            ),
          ),
          SizedBox(
            height: 400,
            width:  MediaQuery.of(context).size.width - 30,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: data.images.length,
              itemBuilder: (context, index) {
                return CachedNetworkImage(
                  imageUrl: data.images.getOrCrash()[index].url.getOrCrash(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Container(
                  padding: EdgeInsets.fromLTRB(10, 8, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    data.name.getOrCrash(),
                    style: TextStyle(
                        fontSize: 20
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  data.purchasable.getOrCrash()
                      ?  '£${data.price.getOrCrash().toString()}'
                      : 'Non-Purchasable',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
            alignment: Alignment.centerLeft,
            child: Text(
                data.description.getOrCrash()
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: Padding(
                padding: EdgeInsets.only(right:9),
                child: FlatButton(
                    onPressed: () {
                      // ExtendedNavigator.of(context).push(Routes.profileFormPageScaffold,
                      //     arguments: ProfileFormPageScaffoldArguments(
                      //         data: widget.data
                      //     )
                      // );
                    },
                    color: Colors.blue[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue[200])
                    ),
                    child: Text("More")
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Divider(
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }
}

