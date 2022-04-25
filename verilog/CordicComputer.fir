circuit CordicComputer :
  module Rotator :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<1>("h0")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<1>("h0")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h10000"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<1>("h0")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<1>("h0")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h10000"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_1 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<1>("h1")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<1>("h1")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h9720"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<1>("h1")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<1>("h1")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h9720"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_2 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<2>("h2")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<2>("h2")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h4fd9"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<2>("h2")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<2>("h2")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h4fd9"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_3 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
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
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h2888"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<2>("h3")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<2>("h3")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h2888"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_4 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<3>("h4")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<3>("h4")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h1458"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<3>("h4")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<3>("h4")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h1458"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_5 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<3>("h5")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<3>("h5")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("ha2e"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<3>("h5")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<3>("h5")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("ha2e"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_6 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<3>("h6")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<3>("h6")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h517"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<3>("h6")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<3>("h6")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h517"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_7 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<3>("h7")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<3>("h7")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h28b"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<3>("h7")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<3>("h7")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h28b"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_8 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<4>("h8")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<4>("h8")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h145"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<4>("h8")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<4>("h8")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h145"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_9 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<4>("h9")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<4>("h9")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("ha2"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<4>("h9")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<4>("h9")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("ha2"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_10 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<4>("ha")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<4>("ha")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h51"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<4>("ha")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<4>("ha")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h51"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_11 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<4>("hb")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<4>("hb")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h28"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<4>("hb")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<4>("hb")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h28"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_12 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<4>("hc")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<4>("hc")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h14"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<4>("hc")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<4>("hc")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h14"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_13 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<4>("hd")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<4>("hd")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("ha"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<4>("hd")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<4>("hd")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("ha"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_14 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<4>("he")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<4>("he")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h5"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<4>("he")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<4>("he")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h5"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module Rotator_15 :
    input clock : Clock
    input reset : Reset
    output io_in : { flip x : SInt<18>, flip y : SInt<18>, flip a : SInt<18>}
    output io_out : { x : SInt<18>, y : SInt<18>, a : SInt<18>}

    reg xo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 20:19]
    reg yo : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 21:19]
    reg ao : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[Rotator.scala 22:19]
    io_out.x <= xo @[Rotator.scala 24:12]
    io_out.y <= yo @[Rotator.scala 25:12]
    io_out.a <= ao @[Rotator.scala 26:12]
    node _T = lt(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 28:16]
    when _T : @[Rotator.scala 28:23]
      node _xo_T = dshr(io_in.y, UInt<4>("hf")) @[Rotator.scala 29:30]
      node _xo_T_1 = add(io_in.x, _xo_T) @[Rotator.scala 29:19]
      node _xo_T_2 = tail(_xo_T_1, 1) @[Rotator.scala 29:19]
      node _xo_T_3 = asSInt(_xo_T_2) @[Rotator.scala 29:19]
      xo <= _xo_T_3 @[Rotator.scala 29:8]
      node _yo_T = dshr(io_in.x, UInt<4>("hf")) @[Rotator.scala 30:30]
      node _yo_T_1 = sub(io_in.y, _yo_T) @[Rotator.scala 30:19]
      node _yo_T_2 = tail(_yo_T_1, 1) @[Rotator.scala 30:19]
      node _yo_T_3 = asSInt(_yo_T_2) @[Rotator.scala 30:19]
      yo <= _yo_T_3 @[Rotator.scala 30:8]
      node _ao_T = add(io_in.a, asSInt(UInt<18>("h2"))) @[Rotator.scala 31:19]
      node _ao_T_1 = tail(_ao_T, 1) @[Rotator.scala 31:19]
      node _ao_T_2 = asSInt(_ao_T_1) @[Rotator.scala 31:19]
      ao <= _ao_T_2 @[Rotator.scala 31:8]
    else :
      node _T_1 = geq(io_in.a, asSInt(UInt<1>("h0"))) @[Rotator.scala 32:24]
      when _T_1 : @[Rotator.scala 32:32]
        node _xo_T_4 = dshr(io_in.y, UInt<4>("hf")) @[Rotator.scala 33:30]
        node _xo_T_5 = sub(io_in.x, _xo_T_4) @[Rotator.scala 33:19]
        node _xo_T_6 = tail(_xo_T_5, 1) @[Rotator.scala 33:19]
        node _xo_T_7 = asSInt(_xo_T_6) @[Rotator.scala 33:19]
        xo <= _xo_T_7 @[Rotator.scala 33:8]
        node _yo_T_4 = dshr(io_in.x, UInt<4>("hf")) @[Rotator.scala 34:30]
        node _yo_T_5 = add(io_in.y, _yo_T_4) @[Rotator.scala 34:19]
        node _yo_T_6 = tail(_yo_T_5, 1) @[Rotator.scala 34:19]
        node _yo_T_7 = asSInt(_yo_T_6) @[Rotator.scala 34:19]
        yo <= _yo_T_7 @[Rotator.scala 34:8]
        node _ao_T_3 = sub(io_in.a, asSInt(UInt<18>("h2"))) @[Rotator.scala 35:19]
        node _ao_T_4 = tail(_ao_T_3, 1) @[Rotator.scala 35:19]
        node _ao_T_5 = asSInt(_ao_T_4) @[Rotator.scala 35:19]
        ao <= _ao_T_5 @[Rotator.scala 35:8]
      else :
        xo <= asSInt(UInt<1>("h0")) @[Rotator.scala 37:8]
        yo <= asSInt(UInt<1>("h0")) @[Rotator.scala 38:8]
        ao <= asSInt(UInt<1>("h0")) @[Rotator.scala 39:8]

  module CordicComputer :
    input clock : Clock
    input reset : UInt<1>
    output io_in : { flip a : SInt<20>}
    output io_out : { s : SInt<18>, c : SInt<18>}

    wire xi : SInt<18>[16] @[CordicComputer.scala 33:16]
    wire yi : SInt<18>[16] @[CordicComputer.scala 34:16]
    wire ai : SInt<18>[16] @[CordicComputer.scala 35:16]
    reg x : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h9b74"))) @[CordicComputer.scala 37:18]
    reg y : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[CordicComputer.scala 38:18]
    reg a : SInt<18>, clock with :
      reset => (reset, asSInt(UInt<18>("h0"))) @[CordicComputer.scala 39:18]
    node _T = bits(io_in.a, 18, 16) @[CordicComputer.scala 41:16]
    node _T_1 = eq(_T, UInt<1>("h0")) @[CordicComputer.scala 41:29]
    when _T_1 : @[CordicComputer.scala 41:43]
      x <= asSInt(UInt<18>("h9b74")) @[CordicComputer.scala 44:7]
      y <= asSInt(UInt<18>("h0")) @[CordicComputer.scala 45:7]
      a <= io_in.a @[CordicComputer.scala 46:7]
    else :
      node _T_2 = bits(io_in.a, 18, 16) @[CordicComputer.scala 47:22]
      node _T_3 = eq(_T_2, UInt<1>("h1")) @[CordicComputer.scala 47:35]
      when _T_3 : @[CordicComputer.scala 47:49]
        node _x_T = sub(asSInt(UInt<1>("h0")), asSInt(UInt<18>("h0"))) @[CordicComputer.scala 48:10]
        node _x_T_1 = tail(_x_T, 1) @[CordicComputer.scala 48:10]
        node _x_T_2 = asSInt(_x_T_1) @[CordicComputer.scala 48:10]
        x <= _x_T_2 @[CordicComputer.scala 48:7]
        y <= asSInt(UInt<18>("h9b74")) @[CordicComputer.scala 49:7]
        node _a_T = sub(io_in.a, asSInt(UInt<20>("h20000"))) @[CordicComputer.scala 50:18]
        node _a_T_1 = tail(_a_T, 1) @[CordicComputer.scala 50:18]
        node _a_T_2 = asSInt(_a_T_1) @[CordicComputer.scala 50:18]
        a <= _a_T_2 @[CordicComputer.scala 50:7]
      else :
        node _T_4 = bits(io_in.a, 18, 16) @[CordicComputer.scala 51:22]
        node _T_5 = eq(_T_4, UInt<2>("h2")) @[CordicComputer.scala 51:35]
        when _T_5 : @[CordicComputer.scala 51:49]
          node _x_T_3 = sub(asSInt(UInt<1>("h0")), asSInt(UInt<18>("h0"))) @[CordicComputer.scala 52:10]
          node _x_T_4 = tail(_x_T_3, 1) @[CordicComputer.scala 52:10]
          node _x_T_5 = asSInt(_x_T_4) @[CordicComputer.scala 52:10]
          x <= _x_T_5 @[CordicComputer.scala 52:7]
          y <= asSInt(UInt<18>("h9b74")) @[CordicComputer.scala 53:7]
          node _a_T_3 = sub(io_in.a, asSInt(UInt<20>("h20000"))) @[CordicComputer.scala 54:18]
          node _a_T_4 = tail(_a_T_3, 1) @[CordicComputer.scala 54:18]
          node _a_T_5 = asSInt(_a_T_4) @[CordicComputer.scala 54:18]
          a <= _a_T_5 @[CordicComputer.scala 54:7]
        else :
          node _T_6 = bits(io_in.a, 18, 16) @[CordicComputer.scala 55:22]
          node _T_7 = eq(_T_6, UInt<2>("h3")) @[CordicComputer.scala 55:35]
          when _T_7 : @[CordicComputer.scala 55:49]
            node _x_T_6 = sub(asSInt(UInt<1>("h0")), asSInt(UInt<18>("h9b74"))) @[CordicComputer.scala 56:10]
            node _x_T_7 = tail(_x_T_6, 1) @[CordicComputer.scala 56:10]
            node _x_T_8 = asSInt(_x_T_7) @[CordicComputer.scala 56:10]
            x <= _x_T_8 @[CordicComputer.scala 56:7]
            node _y_T = sub(asSInt(UInt<1>("h0")), asSInt(UInt<18>("h0"))) @[CordicComputer.scala 57:10]
            node _y_T_1 = tail(_y_T, 1) @[CordicComputer.scala 57:10]
            node _y_T_2 = asSInt(_y_T_1) @[CordicComputer.scala 57:10]
            y <= _y_T_2 @[CordicComputer.scala 57:7]
            node _a_T_6 = sub(io_in.a, asSInt(UInt<20>("h40000"))) @[CordicComputer.scala 58:18]
            node _a_T_7 = tail(_a_T_6, 1) @[CordicComputer.scala 58:18]
            node _a_T_8 = asSInt(_a_T_7) @[CordicComputer.scala 58:18]
            a <= _a_T_8 @[CordicComputer.scala 58:7]
          else :
            node _T_8 = bits(io_in.a, 18, 16) @[CordicComputer.scala 59:22]
            node _T_9 = eq(_T_8, UInt<3>("h4")) @[CordicComputer.scala 59:35]
            when _T_9 : @[CordicComputer.scala 59:49]
              node _x_T_9 = sub(asSInt(UInt<1>("h0")), asSInt(UInt<18>("h9b74"))) @[CordicComputer.scala 60:10]
              node _x_T_10 = tail(_x_T_9, 1) @[CordicComputer.scala 60:10]
              node _x_T_11 = asSInt(_x_T_10) @[CordicComputer.scala 60:10]
              x <= _x_T_11 @[CordicComputer.scala 60:7]
              node _y_T_3 = sub(asSInt(UInt<1>("h0")), asSInt(UInt<18>("h0"))) @[CordicComputer.scala 61:10]
              node _y_T_4 = tail(_y_T_3, 1) @[CordicComputer.scala 61:10]
              node _y_T_5 = asSInt(_y_T_4) @[CordicComputer.scala 61:10]
              y <= _y_T_5 @[CordicComputer.scala 61:7]
              node _a_T_9 = sub(io_in.a, asSInt(UInt<20>("h40000"))) @[CordicComputer.scala 62:18]
              node _a_T_10 = tail(_a_T_9, 1) @[CordicComputer.scala 62:18]
              node _a_T_11 = asSInt(_a_T_10) @[CordicComputer.scala 62:18]
              a <= _a_T_11 @[CordicComputer.scala 62:7]
            else :
              node _T_10 = bits(io_in.a, 18, 16) @[CordicComputer.scala 63:22]
              node _T_11 = eq(_T_10, UInt<3>("h5")) @[CordicComputer.scala 63:35]
              when _T_11 : @[CordicComputer.scala 63:49]
                x <= asSInt(UInt<18>("h0")) @[CordicComputer.scala 64:7]
                node _y_T_6 = sub(asSInt(UInt<1>("h0")), asSInt(UInt<18>("h9b74"))) @[CordicComputer.scala 65:10]
                node _y_T_7 = tail(_y_T_6, 1) @[CordicComputer.scala 65:10]
                node _y_T_8 = asSInt(_y_T_7) @[CordicComputer.scala 65:10]
                y <= _y_T_8 @[CordicComputer.scala 65:7]
                node _a_T_12 = sub(io_in.a, asSInt(UInt<20>("h60000"))) @[CordicComputer.scala 66:18]
                node _a_T_13 = tail(_a_T_12, 1) @[CordicComputer.scala 66:18]
                node _a_T_14 = asSInt(_a_T_13) @[CordicComputer.scala 66:18]
                a <= _a_T_14 @[CordicComputer.scala 66:7]
              else :
                node _T_12 = bits(io_in.a, 18, 16) @[CordicComputer.scala 67:22]
                node _T_13 = eq(_T_12, UInt<3>("h6")) @[CordicComputer.scala 67:35]
                when _T_13 : @[CordicComputer.scala 67:49]
                  x <= asSInt(UInt<18>("h0")) @[CordicComputer.scala 68:7]
                  node _y_T_9 = sub(asSInt(UInt<1>("h0")), asSInt(UInt<18>("h9b74"))) @[CordicComputer.scala 69:10]
                  node _y_T_10 = tail(_y_T_9, 1) @[CordicComputer.scala 69:10]
                  node _y_T_11 = asSInt(_y_T_10) @[CordicComputer.scala 69:10]
                  y <= _y_T_11 @[CordicComputer.scala 69:7]
                  node _a_T_15 = sub(io_in.a, asSInt(UInt<20>("h60000"))) @[CordicComputer.scala 70:18]
                  node _a_T_16 = tail(_a_T_15, 1) @[CordicComputer.scala 70:18]
                  node _a_T_17 = asSInt(_a_T_16) @[CordicComputer.scala 70:18]
                  a <= _a_T_17 @[CordicComputer.scala 70:7]
                else :
                  node _T_14 = bits(io_in.a, 18, 16) @[CordicComputer.scala 71:22]
                  node _T_15 = eq(_T_14, UInt<3>("h7")) @[CordicComputer.scala 71:35]
                  when _T_15 : @[CordicComputer.scala 71:49]
                    x <= asSInt(UInt<18>("h9b74")) @[CordicComputer.scala 72:7]
                    y <= asSInt(UInt<18>("h0")) @[CordicComputer.scala 73:7]
                    a <= io_in.a @[CordicComputer.scala 74:7]
                  else :
                    x <= asSInt(UInt<18>("h9b74")) @[CordicComputer.scala 76:7]
                    y <= asSInt(UInt<18>("h0")) @[CordicComputer.scala 77:7]
                    a <= asSInt(UInt<18>("h0")) @[CordicComputer.scala 78:7]
    inst rotator_0 of Rotator @[CordicComputer.scala 81:25]
    rotator_0.clock <= clock
    rotator_0.reset <= reset
    rotator_0.io_in.x <= x @[CordicComputer.scala 82:21]
    rotator_0.io_in.y <= y @[CordicComputer.scala 83:21]
    rotator_0.io_in.a <= a @[CordicComputer.scala 84:21]
    xi[0] <= rotator_0.io_out.x @[CordicComputer.scala 85:9]
    yi[0] <= rotator_0.io_out.y @[CordicComputer.scala 86:9]
    ai[0] <= rotator_0.io_out.a @[CordicComputer.scala 87:9]
    inst rotator of Rotator_1 @[CordicComputer.scala 91:25]
    rotator.clock <= clock
    rotator.reset <= reset
    rotator.io_in.x <= xi[0] @[CordicComputer.scala 92:21]
    rotator.io_in.y <= yi[0] @[CordicComputer.scala 93:21]
    rotator.io_in.a <= ai[0] @[CordicComputer.scala 94:21]
    xi[1] <= rotator.io_out.x @[CordicComputer.scala 95:11]
    yi[1] <= rotator.io_out.y @[CordicComputer.scala 96:11]
    ai[1] <= rotator.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_1 of Rotator_2 @[CordicComputer.scala 91:25]
    rotator_1.clock <= clock
    rotator_1.reset <= reset
    rotator_1.io_in.x <= xi[1] @[CordicComputer.scala 92:21]
    rotator_1.io_in.y <= yi[1] @[CordicComputer.scala 93:21]
    rotator_1.io_in.a <= ai[1] @[CordicComputer.scala 94:21]
    xi[2] <= rotator_1.io_out.x @[CordicComputer.scala 95:11]
    yi[2] <= rotator_1.io_out.y @[CordicComputer.scala 96:11]
    ai[2] <= rotator_1.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_2 of Rotator_3 @[CordicComputer.scala 91:25]
    rotator_2.clock <= clock
    rotator_2.reset <= reset
    rotator_2.io_in.x <= xi[2] @[CordicComputer.scala 92:21]
    rotator_2.io_in.y <= yi[2] @[CordicComputer.scala 93:21]
    rotator_2.io_in.a <= ai[2] @[CordicComputer.scala 94:21]
    xi[3] <= rotator_2.io_out.x @[CordicComputer.scala 95:11]
    yi[3] <= rotator_2.io_out.y @[CordicComputer.scala 96:11]
    ai[3] <= rotator_2.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_3 of Rotator_4 @[CordicComputer.scala 91:25]
    rotator_3.clock <= clock
    rotator_3.reset <= reset
    rotator_3.io_in.x <= xi[3] @[CordicComputer.scala 92:21]
    rotator_3.io_in.y <= yi[3] @[CordicComputer.scala 93:21]
    rotator_3.io_in.a <= ai[3] @[CordicComputer.scala 94:21]
    xi[4] <= rotator_3.io_out.x @[CordicComputer.scala 95:11]
    yi[4] <= rotator_3.io_out.y @[CordicComputer.scala 96:11]
    ai[4] <= rotator_3.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_4 of Rotator_5 @[CordicComputer.scala 91:25]
    rotator_4.clock <= clock
    rotator_4.reset <= reset
    rotator_4.io_in.x <= xi[4] @[CordicComputer.scala 92:21]
    rotator_4.io_in.y <= yi[4] @[CordicComputer.scala 93:21]
    rotator_4.io_in.a <= ai[4] @[CordicComputer.scala 94:21]
    xi[5] <= rotator_4.io_out.x @[CordicComputer.scala 95:11]
    yi[5] <= rotator_4.io_out.y @[CordicComputer.scala 96:11]
    ai[5] <= rotator_4.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_5 of Rotator_6 @[CordicComputer.scala 91:25]
    rotator_5.clock <= clock
    rotator_5.reset <= reset
    rotator_5.io_in.x <= xi[5] @[CordicComputer.scala 92:21]
    rotator_5.io_in.y <= yi[5] @[CordicComputer.scala 93:21]
    rotator_5.io_in.a <= ai[5] @[CordicComputer.scala 94:21]
    xi[6] <= rotator_5.io_out.x @[CordicComputer.scala 95:11]
    yi[6] <= rotator_5.io_out.y @[CordicComputer.scala 96:11]
    ai[6] <= rotator_5.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_6 of Rotator_7 @[CordicComputer.scala 91:25]
    rotator_6.clock <= clock
    rotator_6.reset <= reset
    rotator_6.io_in.x <= xi[6] @[CordicComputer.scala 92:21]
    rotator_6.io_in.y <= yi[6] @[CordicComputer.scala 93:21]
    rotator_6.io_in.a <= ai[6] @[CordicComputer.scala 94:21]
    xi[7] <= rotator_6.io_out.x @[CordicComputer.scala 95:11]
    yi[7] <= rotator_6.io_out.y @[CordicComputer.scala 96:11]
    ai[7] <= rotator_6.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_7 of Rotator_8 @[CordicComputer.scala 91:25]
    rotator_7.clock <= clock
    rotator_7.reset <= reset
    rotator_7.io_in.x <= xi[7] @[CordicComputer.scala 92:21]
    rotator_7.io_in.y <= yi[7] @[CordicComputer.scala 93:21]
    rotator_7.io_in.a <= ai[7] @[CordicComputer.scala 94:21]
    xi[8] <= rotator_7.io_out.x @[CordicComputer.scala 95:11]
    yi[8] <= rotator_7.io_out.y @[CordicComputer.scala 96:11]
    ai[8] <= rotator_7.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_8 of Rotator_9 @[CordicComputer.scala 91:25]
    rotator_8.clock <= clock
    rotator_8.reset <= reset
    rotator_8.io_in.x <= xi[8] @[CordicComputer.scala 92:21]
    rotator_8.io_in.y <= yi[8] @[CordicComputer.scala 93:21]
    rotator_8.io_in.a <= ai[8] @[CordicComputer.scala 94:21]
    xi[9] <= rotator_8.io_out.x @[CordicComputer.scala 95:11]
    yi[9] <= rotator_8.io_out.y @[CordicComputer.scala 96:11]
    ai[9] <= rotator_8.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_9 of Rotator_10 @[CordicComputer.scala 91:25]
    rotator_9.clock <= clock
    rotator_9.reset <= reset
    rotator_9.io_in.x <= xi[9] @[CordicComputer.scala 92:21]
    rotator_9.io_in.y <= yi[9] @[CordicComputer.scala 93:21]
    rotator_9.io_in.a <= ai[9] @[CordicComputer.scala 94:21]
    xi[10] <= rotator_9.io_out.x @[CordicComputer.scala 95:11]
    yi[10] <= rotator_9.io_out.y @[CordicComputer.scala 96:11]
    ai[10] <= rotator_9.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_10 of Rotator_11 @[CordicComputer.scala 91:25]
    rotator_10.clock <= clock
    rotator_10.reset <= reset
    rotator_10.io_in.x <= xi[10] @[CordicComputer.scala 92:21]
    rotator_10.io_in.y <= yi[10] @[CordicComputer.scala 93:21]
    rotator_10.io_in.a <= ai[10] @[CordicComputer.scala 94:21]
    xi[11] <= rotator_10.io_out.x @[CordicComputer.scala 95:11]
    yi[11] <= rotator_10.io_out.y @[CordicComputer.scala 96:11]
    ai[11] <= rotator_10.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_11 of Rotator_12 @[CordicComputer.scala 91:25]
    rotator_11.clock <= clock
    rotator_11.reset <= reset
    rotator_11.io_in.x <= xi[11] @[CordicComputer.scala 92:21]
    rotator_11.io_in.y <= yi[11] @[CordicComputer.scala 93:21]
    rotator_11.io_in.a <= ai[11] @[CordicComputer.scala 94:21]
    xi[12] <= rotator_11.io_out.x @[CordicComputer.scala 95:11]
    yi[12] <= rotator_11.io_out.y @[CordicComputer.scala 96:11]
    ai[12] <= rotator_11.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_12 of Rotator_13 @[CordicComputer.scala 91:25]
    rotator_12.clock <= clock
    rotator_12.reset <= reset
    rotator_12.io_in.x <= xi[12] @[CordicComputer.scala 92:21]
    rotator_12.io_in.y <= yi[12] @[CordicComputer.scala 93:21]
    rotator_12.io_in.a <= ai[12] @[CordicComputer.scala 94:21]
    xi[13] <= rotator_12.io_out.x @[CordicComputer.scala 95:11]
    yi[13] <= rotator_12.io_out.y @[CordicComputer.scala 96:11]
    ai[13] <= rotator_12.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_13 of Rotator_14 @[CordicComputer.scala 91:25]
    rotator_13.clock <= clock
    rotator_13.reset <= reset
    rotator_13.io_in.x <= xi[13] @[CordicComputer.scala 92:21]
    rotator_13.io_in.y <= yi[13] @[CordicComputer.scala 93:21]
    rotator_13.io_in.a <= ai[13] @[CordicComputer.scala 94:21]
    xi[14] <= rotator_13.io_out.x @[CordicComputer.scala 95:11]
    yi[14] <= rotator_13.io_out.y @[CordicComputer.scala 96:11]
    ai[14] <= rotator_13.io_out.a @[CordicComputer.scala 97:11]
    inst rotator_14 of Rotator_15 @[CordicComputer.scala 91:25]
    rotator_14.clock <= clock
    rotator_14.reset <= reset
    rotator_14.io_in.x <= xi[14] @[CordicComputer.scala 92:21]
    rotator_14.io_in.y <= yi[14] @[CordicComputer.scala 93:21]
    rotator_14.io_in.a <= ai[14] @[CordicComputer.scala 94:21]
    xi[15] <= rotator_14.io_out.x @[CordicComputer.scala 95:11]
    yi[15] <= rotator_14.io_out.y @[CordicComputer.scala 96:11]
    ai[15] <= rotator_14.io_out.a @[CordicComputer.scala 97:11]
    io_out.c <= xi[15] @[CordicComputer.scala 100:12]
    io_out.s <= yi[15] @[CordicComputer.scala 101:12]

