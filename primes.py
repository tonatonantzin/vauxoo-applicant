#!/usr/bin/python
# -*- coding: utf-8 -*-
# Tonantzin Chavez 11/26/2015
# Calcula si un numero es primo o no
# Devuelve True o False

class PrimeClass:
   
   
    def is_prime(self):
        self.num = int(raw_input("Escribe numero => "))
        for i in range(2, self.num):
            if (self.num % i) == 0:
                print "No primo"
                return False
            print "Primo"
            return True


test = PrimeClass()
test.is_prime()
