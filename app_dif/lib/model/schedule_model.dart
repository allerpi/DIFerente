const keyWeekDay = 'diaSemana';
const keyStartDate = 'horaInicio';
const keyEndDate = 'horaFin';
const keyLocationID = 'idUbicacion';

class ScheduleModel {
  late int locationID = 0;
  late String weekday = "";
  late String startTime = "";
  late String endTime = "";

  ScheduleModel.fromJSON(Map<String, dynamic> json) {
    this.locationID = json[keyLocationID];
    this.weekday = json[keyWeekDay];
    this.startTime = json[keyStartDate];
    this.endTime = json[keyEndDate];
  }
}
