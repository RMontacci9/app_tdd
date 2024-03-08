class Counter {
  int value = 0;

  void  increment() {
    value ++;
  }

  void decrement() => value - 1;

  void incrementParams(int increment){
    value = increment + value;
  }
}

