import 'package:apidemo/bloc/availabejob/available_job_bloc.dart';
import 'package:apidemo/model/availablejob/available_job_model.dart';
import 'package:apidemo/model/details_child_model.dart';
import 'package:apidemo/model/details_parent_model.dart';
import 'package:apidemo/ui/advanced_info.dart';
import 'package:apidemo/util/text_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
//  const DetailScreen();

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final helper = TextHelper();
  List<DetailsParentModel> parentList = [];
  AvailableJobBloc availableJobBloc;

//  AvailableJobModel availableJobModel;

  @override
  Widget build(BuildContext context) {
//    SharedData sharedData = SharedData.of(context, 'test');
////    availableJobModel = sharedData.availableModel;
//    Widget testString = sharedData.getTestText();
//    print(testString);

//    availableJobModel = global.availableJobModel;
    final AvailableJobModel availableJobModel =
        ModalRoute.of(context).settings.arguments;
    setListData(availableJobModel);
    return Material(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
//        body: testString,
        body: detailsBody(availableJobModel),
      ),
    );
  }

//  BlocListener<AvailableJobBloc, AvailableJobState> availableJobBuildBloc() {
//    return BlocListener<AvailableJobBloc, AvailableJobState>(
//        listener: (BuildContext context, AvailableJobState state) {},
//        child: BlocBuilder<AvailableJobBloc, AvailableJobState>(
//            // ignore: missing_return
//            builder: (BuildContext context, AvailableJobState state) {
//          if (state is SetAvailableJobModelEvent) {
////            this.availableJobModel = SetAvailableJobModelState().setValue();
//            return setListData(SetAvailableJobModelState().setValue());
//          }
//        }));
//  }

  Widget detailsBody(AvailableJobModel availableJobModel) {
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              color: Colors.grey[100],
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              availableJobModel.jobTitle,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              availableJobModel.jobEmployer.fullAddress,
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              helper.dateFormatter(
                                availableJobModel.createdDate,
                              ),
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.grey[600]),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0, right: 20.0),
                      alignment: Alignment.topRight,
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            availableJobModel.jobEmployer.companyLogo,
                            fit: BoxFit.fill,
                            height: mediaQuery.size.height / 100 * 18.0,
                            width: mediaQuery.size.height / 100 * 18.0,
                          ),
                          Text(
                            availableJobModel.jobEmployer.companyName,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.grey[400],
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.share,
                                        color: Colors.grey[400],
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                )),
                            OutlineButton(
                              splashColor: Colors.red,
                              child: Text(
                                'Apply',
                                style: TextStyle(color: Colors.red),
                              ),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20.0),
                        alignment: Alignment.topRight,
                        child: FlatButton(
                          color: Colors.red,
                          child: Text(
                            'Follow',
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            decoration: new BoxDecoration(
                color: Colors.grey[100],
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(15.0),
                    topRight: const Radius.circular(15.0),
                    bottomLeft: const Radius.circular(15.0),
                    bottomRight: const Radius.circular(15.0))),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: parentList.length,
                itemBuilder: (context, pos) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            parentList[pos].name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        childList(parentList[pos].list),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: SizedBox(
              width: mediaQuery.size.width - 70.0,
              height: 40.0,
              child: FlatButton(
                color: Colors.red,
                child: Text(
                  'Advanced Info',
                  style: TextStyle(color: Colors.white),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdvancedInfo(),
                      settings: RouteSettings(
                        arguments: availableJobModel,
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget childList(List<DetailsChildModel> list) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, pos) {
          return buildListRow(list, pos);
        });
  }

  Widget buildListRow(List<DetailsChildModel> list, int pos) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  list[pos].name,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(list[pos].value),
            ],
          ),
        ),
        SizedBox(
          height: 8.0,
        )
      ],
    );
  }

  checkEmpty(List<DetailsChildModel> list, int pos) {
    if (list[pos].name.isNotEmpty) {
      return true;
    } else
      return false;
  }

  setListData(AvailableJobModel availableJobModel) {
    List<DetailsChildModel> jobIndustryList = [];
    List<DetailsChildModel> jobDescriptionList = [];
    List<DetailsChildModel> jobRoleList = [];

    jobIndustryList.add(DetailsChildModel(
        name: 'Year Of Experience',
        value: availableJobModel.yearExperienceFrom.toString() +
            ' - ' +
            availableJobModel.yearExperienceTo.toString()));
    jobIndustryList.add(DetailsChildModel(
        name: 'Salary',
        value: availableJobModel.salaryFrom.toString() +
            ' - ' +
            availableJobModel.salaryTo.toString() +
            '  ' +
            availableJobModel.currency.name));
    jobIndustryList.add(DetailsChildModel(
        name: 'Employment Type', value: availableJobModel.employmentType.name));
    if (availableJobModel.preferredcarrerLevel.length > 0) {
      jobIndustryList.add(DetailsChildModel(
          name: 'Career Level',
          value: availableJobModel.preferredcarrerLevel[0].name));
    }

    jobDescriptionList
        .add(DetailsChildModel(name: availableJobModel.description, value: ''));
    jobRoleList
        .add(DetailsChildModel(name: availableJobModel.jobTitle, value: ''));
    if (parentList.isEmpty) {
      parentList
          .add(DetailsParentModel(name: 'Job Details', list: jobIndustryList));
      parentList.add(DetailsParentModel(
          name: 'Job Description', list: jobDescriptionList));
      parentList.add(DetailsParentModel(name: 'Job Role', list: jobRoleList));
    }
  }
}
