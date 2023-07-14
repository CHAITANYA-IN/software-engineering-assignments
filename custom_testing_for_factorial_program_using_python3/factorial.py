def factorial1(n):
    """
    Cannot Handle other datatypes and Negative numbers
    """
    fact = 1
    while(n > 1):
        fact*=n
        n-=1
    return(str(fact))

def factorial2(n):
    """
    Cannot Handle other datatypes
    """
    if(n < 0):
        return None
    fact = 1
    while(n > 1):
        fact*=n
        n-=1
    return(str(fact))

def factorial3(n):
    """
    Cannot Handle other datatypes and Case of Zero
    """
    if(n > 1):
        fact = 1
        while(n > 1):
            fact*=n
            n-=1
        return(str(fact))
    return None

def factorial(n):
    c = compile("fact = 1\nwhile(n > 1):\n\tfact*=n\n\tn-=1\nprint(fact)", 'factorial', 'exec')
    return str(exec(c, {"n": n}))