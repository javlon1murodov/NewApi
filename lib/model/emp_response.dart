
class EmoResponse{
  String? status;
  List<Employee> ?data;
  String ? message;
  EmoResponse({this.status, this.data, this.message});

  factory EmoResponse.fromJson(Map<String, dynamic>json)=>EmoResponse(
      status:json["status"],
      data: List<Employee>.from(json["data"].map((x) => Employee.fromJson(x))),
      message:json["message"]
  );

  Map<String,dynamic>toJson()=>{
    "status":status,
    "data":List<dynamic>.from(data!.map((x)=>toJson())),
    "message":message,
  };
}

class Employee{
  int? id;
  String? employeeName;
  int? employeeSalary;
  int? employeeAge;
  String? employeeImage;


  Employee({
    this.id,
    this.employeeName,
    this.employeeSalary,
    this.employeeAge,
    this.employeeImage
  });
  factory Employee.fromJson(Map<String, dynamic>json)=>Employee(
      id: json["id"],
      employeeName: json["employee_name"],
      employeeSalary: json["employee_salary"],
      employeeAge: json["employee_age"],
      employeeImage: json["profile_image"]
  );
  Map<String, dynamic> toJson()=>{
    "id":id,
    "employee_name":employeeName,
    "employee_salary":employeeSalary,
    "employee_age": employeeAge,
    "profile_image":employeeImage,
  };


}

//dummy.restapiexample.com
//quicktype.io