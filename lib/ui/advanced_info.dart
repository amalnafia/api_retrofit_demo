import 'package:apidemo/model/availablejob/available_job_model.dart';
import 'package:apidemo/model/details_child_model.dart';
import 'package:apidemo/model/details_parent_model.dart';
import 'package:flutter/material.dart';

class AdvancedInfo extends StatefulWidget {
  @override
  _AdvancedInfoState createState() => _AdvancedInfoState();
}

class _AdvancedInfoState extends State<AdvancedInfo> {
  List<DetailsParentModel> parentList = [];

  @override
  Widget build(BuildContext context) {
    final AvailableJobModel availableJobModel =
        ModalRoute.of(context).settings.arguments;

    setAdvancedInfoList(availableJobModel);
    return Material(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Advanced Info'),
        backgroundColor: Colors.red,
      ),
      body: buildBody(availableJobModel),
      backgroundColor: Colors.grey[200],
    ));
  }

  Widget buildBody(AvailableJobModel availableJobModel) {
    return Container(
      child: ListView.builder(
          itemCount: parentList.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, pos) {
            return Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20.0, top: 8.0, bottom: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    parentList[pos].name,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  childList(parentList[pos].list)
                ],
              ),
            );
          }),
    );
  }

  childList(List<DetailsChildModel> list) {
    return ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, pos) {
          return Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 4.0, top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  list[pos].value,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[500]),
                )
              ],
            ),
          );
        });
  }

  void setAdvancedInfoList(AvailableJobModel availableJobModel) {
    List<DetailsChildModel> preferredLanguages = [];
    List<DetailsChildModel> preferredDegree = [];
    List<DetailsChildModel> preferredSkill = [];
    List<DetailsChildModel> preferredNationality = [];
    List<DetailsChildModel> preferredMilitaryStatus = [];
    List<DetailsChildModel> preferredVisaStatus = [];
    for (int i = 0; i < availableJobModel.preferredLanguage.length; i++) {
      preferredLanguages.add(DetailsChildModel(
          value: availableJobModel.preferredLanguage[i].name));
    }
    print('amal' + preferredLanguages.length.toString());
    for (int i = 0; i < availableJobModel.preferredDegree.length; i++) {
      preferredDegree.add(
          DetailsChildModel(value: availableJobModel.preferredDegree[i].name));
    }
    for (int i = 0; i < availableJobModel.skills.length; i++) {
      preferredSkill
          .add(DetailsChildModel(value: availableJobModel.skills[i].name));
    }
    for (int i = 0; i < availableJobModel.preferredNationality.length; i++) {
      preferredNationality.add(DetailsChildModel(
          value: availableJobModel.preferredNationality[i].name));
    }
    for (int i = 0; i < availableJobModel.preferredMiliteryStatus.length; i++) {
      preferredMilitaryStatus.add(DetailsChildModel(
          value: availableJobModel.preferredMiliteryStatus[i].name));
    }
    for (int i = 0; i < availableJobModel.preferredVisaStatus.length; i++) {
      preferredVisaStatus.add(DetailsChildModel(
          value: availableJobModel.preferredVisaStatus[i].name));
    }
    if (parentList.isEmpty) {
      if (preferredLanguages.length > 0) {
        parentList.add(DetailsParentModel(
            name: 'Preferred Language', list: preferredLanguages));
      }
      if (preferredDegree.length > 0) {
        parentList.add(DetailsParentModel(
            name: 'Preferred Degree', list: preferredDegree));
      }
      if (preferredSkill.length > 0) {
        parentList.add(
            DetailsParentModel(name: 'Preferred Skills', list: preferredSkill));
      }
      if (preferredNationality.length > 0) {
        parentList.add(DetailsParentModel(
            name: 'Preferred Nationality', list: preferredNationality));
      }
      if (preferredMilitaryStatus.length > 0) {
        parentList.add(DetailsParentModel(
            name: 'Preferred Military Status', list: preferredMilitaryStatus));
      }
      if (preferredVisaStatus.length > 0) {
        parentList.add(DetailsParentModel(
            name: 'Preferred Visa Status', list: preferredVisaStatus));
      }
    }
  }
}
