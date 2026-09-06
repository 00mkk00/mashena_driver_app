abstract interface class Mapper<I, O> {
  const Mapper();
  O map(I input);
}

abstract interface class BiMapper<A, B> {
  const BiMapper();
  B toB(A a);
  A toA(B b);
}
