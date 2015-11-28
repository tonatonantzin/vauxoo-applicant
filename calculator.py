#!/usr/bin/python
# -*- coding: utf-8 -*-
# Tonantzin Chavez 11/26/2015
# Calcula la suma de una lista de numeros enteros


class CalculatorClass(object):

    def __init__(self):
        self.lista = []
        self.suma = 0

    def llenarlista(self):
        x = int(raw_input("Ingrese longitud de la lista=>"))
        for i in range(x):
            self.lista.append(int(raw_input("Numero=>")))

    def sum(self):
        for i in self.lista:
            self.suma += i
        print "Total=>", self.suma


objeto = CalculatorClass()
objeto.llenarlista()
objeto.sum()
