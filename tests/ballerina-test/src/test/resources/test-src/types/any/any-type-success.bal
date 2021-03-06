function jsonReturnTest() (any) {
  any abc = jsonReturnFunction();
  return abc;
}

function jsonReturnFunction()(json) {
  json val = {"PropertyName" : "Value"};
  return val;
}

function tableReturnTestAsAny () (any) {
    any abc = tableReturnFunction();
    return abc;
}

function inputAnyAsTableTest () (table) {
    return anyToTableCastFunction(tableReturnFunction());
}

function anyToTableCastFunction (any aTable) (table) {
    var casted, err = (table) aTable;
    return casted;
}

function tableReturnFunction () (table) {
    table < Employee> tb = {};
    Employee e1 = {id:1, name:"Jane"};
    Employee e2 = {id:2, name:"Anne"};
    tb.add(e1);
    tb.add(e2);

    return tb;
}

struct Employee {
    int id;
    string name;
}


function anyMethodParameter() (any) {
  int i = 9;
  return anyParam(i);
}

function anyParam(any val)(int) {
  int m;
  m, _ = (int)val;
  return m;
}


function anyInStructTest()(any) {
  Sample sample = {i:1, val:true, msg:"sampleVal"};
  return sample.val;
}

struct Sample {
  int i;
  any val;
  string msg;
}


function successfulIntCasting()(int) {
  any abc = floatReturn();
  float floatVal;
  floatVal, _ = (float)abc;
  //Int to float is a conversion now
  int intVal;
  intVal = <int>floatVal;
  return intVal;
}

function floatReturn()(float) {
  float val = 5.6;
  return val;
}


function anyToAnyExplicitCasting() (any) {
  any abc = jsonReturnFunction();
  any val = abc;
  return val;
}


function multipleReturnWithAny() (any, int) {
  any abc = jsonReturnFunction();
  return abc, 7;
}


function multipleParamWithAny() (int) {
  any abc = jsonReturnFunction();
  int val = multipleParam(abc, 5);
  return val;
}

function multipleParam(any val, int sam) (int) {
  return sam;
}

function variableDefTest()(any a) {
    any val = 5;
    return val;
}

function assignmentTest()(any a) {
    any val;
    val = 44.3;
    return val;
}

function anyArrayWithMapArray()(any[] a) {
    map[] ma = [];
    a = ma;
    return;
}
