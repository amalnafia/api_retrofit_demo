import 'package:apidemo/model/availablejob/available_job_model.dart';
import 'package:apidemo/model/availablejob/available_job_response.dart';
import 'package:equatable/equatable.dart';

abstract class AvailableJobState extends Equatable {}

class AvailableJobInitialState extends AvailableJobState {
  @override
  List<AvailableJobModel> get props => [];
}

class AvailableJobLoadingState extends AvailableJobState {
  @override
  List<Object> get props => [];
}

class AvailableJobLoadedState extends AvailableJobState {
  AvailableJobResponse availableJobResponse;

  AvailableJobLoadedState(this.availableJobResponse);

  @override
  List<AvailableJobModel> get props => availableJobResponse.data;
}

class AvailableJobErrorState extends AvailableJobState {
  String message;

  AvailableJobErrorState(this.message);

  @override
  List<Object> get props => [message];
}

class SetAvailableJobModelState extends AvailableJobState {
  AvailableJobModel availableJobModel;

  SetAvailableJobModelState({this.availableJobModel});

  setValue() {
    return this.availableJobModel = availableJobModel;
  }

  @override
  String toString() {
    return availableJobModel.toString();
  }

  @override
  List<Object> get props {
    this.availableJobModel = availableJobModel;
    return [availableJobModel];
  }
}
