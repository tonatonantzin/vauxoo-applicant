#!/usr/bin/python
# -*- coding: utf-8 -*-


class PrimeClass(object):
    """
    Your class documentation here
    """
    def is_prime(num):
        for i in range(2,num):
            if (num%i)==0:
                return False
        return True
     
    while True:
        try:
            num = int(raw_input("Escribe numero => "))
            if num==0:
                break
            if is_prime(num):
                print  is_prime(num)
            else:
               print  is_prime(num)
        except:
            print "Valor erroneo" 
