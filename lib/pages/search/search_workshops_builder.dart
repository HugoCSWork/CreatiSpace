import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/search/workshop/search_workshop_bloc.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchWorkshopBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchWorkshopBloc, SearchWorkshopState>(
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
                child: const Text("No workshops related to that search"),
              );
            } else {
              return Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return SearchWorkshop(item: state.items.asList()[index]);
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

class SearchWorkshop extends StatelessWidget {

  final Workshop item;

  const SearchWorkshop({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).push(Routes.workshopDetails, arguments: WorkshopDetailsArguments(
          workshop: item
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Container(
          height: 100.0,
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0.2, 1.0),
                blurRadius: 5.0,
                color: Colors.black26,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        item.workshopName.getOrCrash().toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        item.workshopDescription.getOrCrash().toString(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                          color: Color(0xFFBBCCCC),
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date: ${item.workshopDate.getOrCrash()}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Price: £${item.workshopPrice.getOrCrash().toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                  ],
                ),
            ),
        ),
      ),
    );
  }
}
