This directory contains swept-sine measurements of the open loop gain of accelerometer H1 in the central table.

The traces are G2:SAS-ACC_FB_H1_IN1 / G2:SAS-ACC_INT_H1_IN2, and the excitation was put into G2:SAS-ACC_INT_H1_EXC.  
Thus the transfer function includes all elements of the open loop gain EXCEPT the "FB" filter module.

Normally the INT filter bank contains an integrator, but I guess I might have moved that integrator to the FB
filter bank for the purpose of making this measurement.  (Why didn't I just use ACC_INT_H1_OUT instead of _IN2? 
I'm not sure.)

The data were taken on 2012-03-26, but it seems I failed to mention the measurement in the logbook.
