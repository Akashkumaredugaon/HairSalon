void main(){

  Student student=Student();

}


 class Person {
  int? a;
void   canWalk(){

}
  void canRun(){

  }
}

class Student implements Person {
  // implementation of canWalk()
  @override
  canWalk() {
    print('Student can walk');
  }

// implementation of canRun()
  @override
  canRun() {
    print('Student can run');
  }

  @override
  int? a;
}