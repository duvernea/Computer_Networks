#!/bin/bash
for i in $( find . -name rate.png ); do echo $i; display $i; done