import math
from msilib.schema import Binary

I = 1
F = 16
S = 1
W2 = 18

def float2fix(a):
    b = int(abs(a) * pow(2, F))

    if (S):
        if a > 0:
            sign = 0
        else:
            sign = 1
        b |= (sign << (I + F));

    return b;

def fix2float(a):
    b = (a & (~(1 << (I + F)))) / pow(2, F);

    if (S):
        if (a & (1 << (I + F))):
            return -b;
    return b;

def RightShiftFix(a, n):
    b = (a & (~(1 << (I + F)))) >> n
    if (S):
        return b | (a & (1 << I + F))
    return b 

def scaleDgree(a, w):
    return int(((math.pow(2, w - 2) / 45) * a))


def rotator(x, y, a, stage, angle):
    xo = 0
    yo = 0
    ao = 0
    if a < 0:
        xo = x + RightShiftFix(y, stage)
        yo = y - RightShiftFix(x, stage)
        ao = a + angle
    else:
        xo = x - RightShiftFix(y, stage)
        yo = y + RightShiftFix(x, stage)
        ao = a - angle
    return xo, yo, ao

def rotator_f(x, y, a, stage, angle):
    xo = 0
    yo = 0
    ao = 0
    if a < 0:
        xo = x + y * (2 ** -stage)
        yo = y - x * (2 ** -stage)
        ao = a + angle
    else:
        xo = x - y * (2 ** -stage)
        yo = y + x * (2 ** -stage)
        ao = a - angle
    return xo, yo, ao 

def cordic(a, n):
    xi = float2fix(1 / 1.64676)
    yi = 0
    ai = scaleDgree(a, W2)
    print(xi, yi, ai)
    for i in range(0, n):
        deg = math.degrees(math.atan(2 ** -i))
        deg = scaleDgree(deg, W2)
        print(deg)
        xi, yi, ai = rotator(xi, yi, ai, i, deg)
        # print(xi, yi, ai)
    return xi, yi, ai

def cordic_f(a, n):
    xi = 1 / 1.64676
    yi = 0
    ai = a
    for i in range(0, n):
        deg = math.degrees(math.atan(2 ** -i))
        xi, yi, ai = rotator_f(xi, yi, ai, i, deg)
    return xi, yi, ai

def cordic_360(a, n):
    ai = a
    if (a < 45):
        ai = a
    elif (a < 90):
        ai = a - 45
    elif (a < 135):
        ai = a - 90
    elif (a < 180):
        ai = a - 135
    elif (a < 225):
        ai = a - 180
    elif (a < 270):
        ai = a - 225
    elif (a < 315):
        ai = a - 270
    elif (a < 360):
        ai = a - 315

c, s, a = cordic_f(30, 16)
print("float = %f, except = %f" %(c, math.cos(math.radians(30))))
print("float = %f, except = %f" %(s, math.sin(math.radians(30))))

c, s, a = cordic(30, 16)
print("fix = %d, float = %f, except = %f" %(c, fix2float(c), math.cos(math.radians(30))))
print("fix = %d, float = %f, except = %f" %(s, fix2float(s), math.sin(math.radians(30))))
