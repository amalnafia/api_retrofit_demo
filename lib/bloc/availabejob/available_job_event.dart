import 'package:apidemo/model/availablejob/available_job_model.dart';
import 'package:apidemo/model/availablejob/available_job_request.dart';
import 'package:equatable/equatable.dart';

abstract class AvailableJobEvent extends Equatable {}

class FetchAvailableJobEvent extends AvailableJobEvent {
  @override
  List<Object> get props => null;
  AvailableJobRequest request;
  FetchAvailableJobEvent({this.request});
}

class FetchAvailableLoadMoreJobEvent extends AvailableJobEvent {
  @override
  List<Object> get props => null;
  AvailableJobRequest request;
  FetchAvailableLoadMoreJobEvent({this.request});
}

class SetAvailableJobModelEvent extends AvailableJobEvent {
  @override
  List<Object> get props => null;
  AvailableJobModel availableJobModel;
  SetAvailableJobModelEvent({this.availableJobModel});
}
