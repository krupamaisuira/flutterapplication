class Calculation
{
  int num1 = 0;
  int num2 = 0;
  Calculation(int num1 , int num2)
  {
       this.num1 = num1;
       this.num2 = num2;
  }
  void MethodCalculation()
  {
    print("n1+n2= ${num1+num2}");
    print("n1-n2= ${num1-num2}");
    print("n1*n2= ${num1*num2}");
    print("n1/n2= ${num1/num2}");

  }
  void booleanCondition()
  {
    // use to check datatype
    print(num1 is int);
    print(num1 is String);
  }
  void listElement()
  {
    var list1 = new List.filled(5, 0);
    list1[0] = 10;
    list1[1] = 25;
    print(list1);
  }
  void mapElement()
  {
    var student = {'name':'Tom','age':'23'};
    student.forEach((key, value) { print("${key} : ${value}");});
    print(student.keys);
    print(student.values);
  }
  void ArrayElement()
  {
    var list1 = [10,20,30,40,50,60];
    var list = ["James","Patrick","Mathew"];
    for(var item in list1)
      {
        print(item);
      }
    list.forEach((item) {
      print('${list.indexOf(item)} : ${item}');
    });
  }
}


void main()
{

  Calculation obj = new Calculation(25,50);
  obj.MethodCalculation();
  obj.booleanCondition();
  obj.listElement();
  obj.mapElement();
  obj.ArrayElement();
    // var name = "xyz";
    // var roll_no = 24;
    // print("Hello I am ${name} and have roll_no ${roll_no}");
    // print("\u{1f600}");
    // print("\u2665");
}