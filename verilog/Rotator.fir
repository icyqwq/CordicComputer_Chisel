circuit Rotator :
  module Rotator :
    input clock : Clock
    input reset : UInt<1>
    output io_in : { flip x : SInt<16>, flip y : SInt<16>, flip a : SInt<16>}
    output io_out : { x : SInt<16>, y : SInt<16>, a : SInt<16>}

    reg xo : SInt<16>, clock with :
      reset => (reset, asSInt(UInt<16>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<16>, clock with :
      reset => (reset, asSInt(UInt<16>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<16>, clock with :
      reset => (reset, asSInt(UInt<16>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<2>("h3")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<2>("h3")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<16>("he9"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
      node _T_1 = add(io_in.a, asSInt(UInt<16>("he9"))) @[Rotator.scala 32:76]
      node _T_2 = tail(_T_1, 1) @[Rotator.scala 32:76]
      node _T_3 = asSInt(_T_2) @[Rotator.scala 32:76]
      node _T_4 = bits(reset, 0, 0) @[Rotator.scala 32:11]
      node _T_5 = eq(_T_4, UInt<1>("h0")) @[Rotator.scala 32:11]
      when _T_5 : @[Rotator.scala 32:11]
        printf(clock, UInt<1>("h1"), "[%d] %d + %d = %d\n", UInt<2>("h3"), io_in.a, asSInt(UInt<16>("he9")), _T_3) : printf @[Rotator.scala 32:11]
    else :
      node _T_6 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 33:24]
      when _T_6 : @[Rotator.scala 33:32]
        node _xo_T_4 = dshr(io_in.y, UInt<2>("h3")) @[Rotator.scala 34:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 34:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 34:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 34:19]
        xo <= _xo_T_7 @[Rotator.scala 34:8]
        node _yo_T_4 = dshr(io_in.x, UInt<2>("h3")) @[Rotator.scala 35:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 35:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 35:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 35:19]
        yo <= _yo_T_7 @[Rotator.scala 35:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<16>("he9"))) @[Rotator.scala 36:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 36:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 36:19]
        ao <= _ao_T_5 @[Rotator.scala 36:8]
        node _T_7 = add(io_in.a, asSInt(UInt<16>("he9"))) @[Rotator.scala 37:76]
        node _T_8 = tail(_T_7, 1) @[Rotator.scala 37:76]
        node _T_9 = asSInt(_T_8) @[Rotator.scala 37:76]
        node _T_10 = bits(reset, 0, 0) @[Rotator.scala 37:11]
        node _T_11 = eq(_T_10, UInt<1>("h0")) @[Rotator.scala 37:11]
        when _T_11 : @[Rotator.scala 37:11]
          printf(clock, UInt<1>("h1"), "[%d] %d + %d = %d\n", UInt<2>("h3"), io_in.a, asSInt(UInt<16>("he9")), _T_9) : printf_1 @[Rotator.scala 37:11]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 40:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 41:8]

