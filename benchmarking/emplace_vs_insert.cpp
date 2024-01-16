static void Insert(benchmark::State& state) {
  // Code inside this loop is measured repeatedly
  struct MyStruct {
  
     MyStruct(size_t a, std::string hello, std::string time ) : _a(a), _hello(hello), _time(time){}
    size_t _a;
    std::string _hello;
    std::string _time;
  };
  std::map<size_t, MyStruct> _map;

  size_t i=0;
  for (auto _ : state) {
    _map.insert({i, MyStruct(i,"hello", "world")});
    i++;
     // Make sure the variable is not optimized away by compiler
  }
}
// Register the function as a benchmark
BENCHMARK(Insert);

static void Emplace(benchmark::State& state) {
  struct MyStruct {
  
    MyStruct(size_t a, std::string hello, std::string time ) : _a(a), _hello(hello), _time(time){}
    size_t _a;
    std::string _hello;
    std::string _time;
  };
  std::map<size_t, MyStruct> _map;
  size_t i=0;
  for (auto _ : state) {
    _map.emplace(i, MyStruct{i,"hello", "world"});
     // Make sure the variable is not optimized away by compiler
     i++;
  }
}
// Register the function as a benchmark
BENCHMARK(Emplace);
