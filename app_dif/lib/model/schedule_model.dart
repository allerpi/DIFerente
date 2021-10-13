const keyWeekDay = 'diaSemana';
const keyStartDate = 'horaInicio';
const keyEndDate = 'horaFin';

class ScheduleModel {
    late String weekday;
    late String startTime;
    late String endTime;

    ScheduleModel.fromJSON(Map<String, dynamic> json){
        this.weekday = json[keyWeekDay];
        this.startTime = json[keyStartDate];
        this.endTime = json[keyEndDate];
    }
}