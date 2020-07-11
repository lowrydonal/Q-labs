// Q1.
trade:([] time:`timestamp$(); sym:`$(); size:`long$(); price:`long$(); side:`$(); exchange:`$());
quote:([]time:`timestamp$();sym:`$();bid:`long$();ask:`long$();bidSize:`long$();askSize:`long$();exchange:`$());
BATCH:1b

// Q2.
upd:{[t;d] $[BATCH; t insert d;
                returnT::get t; `returnT insert d]]}

// Q3.
returnKeyedTable:{[t;k] keyedT:: get t; k xkey keyedT}

// Q4.
applyKeyToTable:{[t;k] k xkey t}
