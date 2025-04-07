def vo2_km(a):
    VO2MAX = (22.351 * a) - 11.288
    print(VO2MAX)


def vo2_m(b):
    Vo2Max = (35.97 * b) - 11.291
    print(Vo2Max)

def roundoff_KM(dist,time):
    twelve_minutes_in_seconds = 720
    total_time = time * 60
    twelve_minutes_distance = (dist / total_time) * twelve_minutes_in_seconds
    vo2max = (22.351 * twelve_minutes_distance) - 11.288
    print(vo2max)

def roundoff_M(dist,time):
     twelve_minutes_in_seconds = 12 * 60
     total_time = time * 60
     twelve_minutes_distance = (dist / total_time) * twelve_minutes_in_seconds
     vo2max = (35.97 * twelve_minutes_distance) - 11.291
     print(vo2max)


roundoff_KM(1.76,12.01)

roundoff_M(1.09,12.01)


vo2_km(1.76)