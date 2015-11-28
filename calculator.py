#!/usr/bin/python
# -*- coding: utf-8 -*-
# Tonantzin Chavez 11/26/2015
# Calcula la suma de 2 numeros enteros


class CalculatorClass(object):


    def sum(x, y):
        res = x + y
        return res
        while True:
          try:
	    x = int(input("Ingrese Numero: "))
	    y = int(input("Ingrese Otro Numero: "))
	    sum(x, y)
          except:
	    print "Valor erroneo"
