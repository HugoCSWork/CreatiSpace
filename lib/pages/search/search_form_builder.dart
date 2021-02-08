import 'package:creatispace/app/search/item/search_item_bloc.dart';
import 'package:creatispace/app/search/user/search_user_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/search/search_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFormBuilder extends StatefulWidget {
  @override
  _SearchFormBuilderState createState() => _SearchFormBuilderState();
}

class _SearchFormBuilderState extends State<SearchFormBuilder> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SearchUserBloc>(
            create: (context) => getIt<SearchUserBloc>()
              ..add(SearchUserEvent.initialized()),
          ),
          BlocProvider<SearchItemBloc>(
            create: (context) => getIt<SearchItemBloc>()
              ..add(SearchItemEvent.initialized()),
          ),
        ],
      child: SearchScaffold(),
    );
  }
}
