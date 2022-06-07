from random import randrange
from datetime import timedelta, datetime

def random_date():
    """
    This function will return a random datetime between two datetime 
    objects.
    """
    #Hardcodeada es mas sencillo
    start = datetime.strptime('1/1/2012 1:30 PM', '%m/%d/%Y %I:%M %p')
    end = datetime.strptime('1/1/2022 4:50 AM', '%m/%d/%Y %I:%M %p')

    delta = end - start
    int_delta = (delta.days * 24 * 60 * 60) + delta.seconds
    random_second = randrange(int_delta)
    return start + timedelta(seconds=random_second)


