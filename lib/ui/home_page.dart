import 'dart:ui';

import 'package:apidemo/bloc/availabejob/available_job_bloc.dart';
import 'package:apidemo/ui/detail_screen.dart';
import 'package:apidemo/util/text_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/availabejob/available_job_event.dart';
import '../bloc/availabejob/available_job_state.dart';
import '../bloc/simple_bloc_delegate.dart';
import '../model/availablejob/available_job_model.dart';
import '../model/availablejob/available_job_request.dart';
import '../model/header_request.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController searchValue = new TextEditingController();
  AvailableJobBloc availableJobBloc;
  ScrollController _scrollController = ScrollController();
  bool isLoading = false;
  int paging = 0;
  List<AvailableJobModel> availableJobList = [];
  int numOfJobs = 0;
  bool isFavorite = false;
  AvailableJobModel availableJobModelTest;
  String test = 'test string';

  @override
  void initState() {
    super.initState();
    BlocSupervisor.delegate = SimpleBlocDelegate();
    availableJobBloc = BlocProvider.of<AvailableJobBloc>(context);
    availableJobBloc
        .add(FetchAvailableJobEvent(request: getAvailableJob('', paging)));

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
//    SharedData(test, DetailScreen());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Material(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 0.0,
              title: setTitle(numOfJobs),
            ),
            body: mainBody(),
          ),
        );
      }),
    );
  }

  Text setTitle(int num) {
    return numOfJobs == 0
        ? Text("Available Jobs")
        : Text("$numOfJobs Available Jobs");
  }

  AvailableJobRequest getAvailableJob(String searchText, int paging) {
    return AvailableJobRequest(0, 1, 0, paging, [], [], [], [], [], [], 0, 0, 0,
        0, 0, searchText, [], HeaderRequest(1, 0, 1, 0, 1));
  }

  BlocListener<AvailableJobBloc, AvailableJobState> availableJobBuildBloc() {
    return BlocListener<AvailableJobBloc, AvailableJobState>(
      listener: (BuildContext context, AvailableJobState state) {
        if (state is AvailableJobErrorState) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
            ),
          );
        }
      },
      child: BlocBuilder<AvailableJobBloc, AvailableJobState>(
        // ignore: missing_return
        builder: (BuildContext context, AvailableJobState state) {
          if (state is AvailableJobInitialState) {
            return buildLoading();
          } else if (state is AvailableJobLoadingState) {
            return buildLoading();
          } else if (state is AvailableJobLoadedState) {
//            if (paging == numOfJobs) {
            availableJobList.addAll(state.props);
            return buildAvailableJobList(availableJobList, context);
//            } else
//              return buildAvailableJobList(state.props, context);
          } else if (state is AvailableJobErrorState) {
            print(state.message);
            return buildErrorUi(state.message);
          }
        },
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildErrorUi(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          message,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  Widget mainBody() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            child: TextField(
              autofocus: false,
              controller: searchValue,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.all(0.0),
                isDense: true,
                border: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  borderSide: BorderSide(color: Colors.grey[400]),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "Search...",
              ),
              onSubmitted: (text) {
                availableJobBloc.add(FetchAvailableJobEvent(
                    request: getAvailableJob(text, paging)));
              },
            ),
          ),
          Expanded(
            child: availableJobBuildBloc(),
          ),
        ],
      ),
    );
  }

  Widget buildAvailableJobList(
      List<AvailableJobModel> availableJobResponse, BuildContext context) {
    final textHelper = TextHelper();
    final mediaQuery = MediaQuery.of(context);
    return ListView.separated(
      controller: _scrollController,
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
        endIndent: 20.0,
        indent: 20.0,
      ),
      itemCount: availableJobResponse.length,
      itemBuilder: (context, pos) {
        numOfJobs = availableJobResponse.length;
        int position = availableJobResponse.length - 1;
        paging = availableJobResponse[position].pagging;
        if (!isLoading) {
          Container(
            alignment: Alignment.bottomCenter,
            child: CupertinoActivityIndicator(),
          );
          print('amal $paging');
        }
        return buildItemList(availableJobResponse, pos, mediaQuery, textHelper);
      },
    );
  }

  Padding buildItemList(List<AvailableJobModel> availableJobResponse, int pos,
      MediaQueryData mediaQuery, TextHelper textHelper) {
    return Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 8.0),
        child: InkWell(
          onTap: () {
//            availableJobBloc.add(SetAvailableJobModelEvent(
//                availableJobModel: availableJobResponse[pos]));
//            setState(() {
//              SharedData(test, DetailScreen());
//            });
            this.availableJobModelTest = availableJobResponse[pos];
//            global.availableJobModel = availableJobResponse[pos];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(),
                settings: RouteSettings(
                  arguments: availableJobResponse[pos],
                ),
              ),
            );
          },
          child: Row(
            children: <Widget>[
              Image.network(
                availableJobResponse[pos].jobEmployer.companyLogo,
                fit: BoxFit.fill,
                height: mediaQuery.size.height / 100 * 18.0,
                width: mediaQuery.size.height / 100 * 18.0,
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          availableJobResponse[pos].jobTitle,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 18.0,
                        ),
                        Text(
                          availableJobResponse[pos].jobEmployer.companyName,
                          style: TextStyle(
                              fontSize: 16.0, color: Colors.grey[600]),
                        ),
                        Text(
                          availableJobResponse[pos].jobEmployer.fullAddress,
                          style: TextStyle(
                              fontSize: 16.0, color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 18.0,
                        ),
                        Text(
                          textHelper.dateFormatter(
                              availableJobResponse[pos].createdDate),
                          style: TextStyle(
                              fontSize: 16.0, color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 18.0,
                        ),
                      ],
                    )),
              ),
              Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            isFavorite = !isFavorite;
                            print('amal $isFavorite');
                            availableJobResponse[pos].isFavorit = isFavorite;
                            setState(() {});
                          },
                          child: setFavourite(
                              availableJobResponse[pos].isFavorit)),
                      IconButton(
                        icon: Icon(
                          Icons.share,
                          color: Colors.grey[400],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }

  void _getMoreData() {
    isLoading = !isLoading;
    print('amal $isLoading');
    availableJobBloc.add(
        FetchAvailableLoadMoreJobEvent(request: getAvailableJob('', paging)));
  }

  loader() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: CupertinoActivityIndicator(),
    );
  }

  setFavourite(bool isFavorit) {
    if (isFavorit == true) {
//      this.isFavorite = !isFavorit;
      return Icon(
        Icons.favorite,
        color: Colors.red,
      );
    } else
      return Icon(
        Icons.favorite,
        color: Colors.grey[400],
      );
  }
}
