Q1.
randQuote:{time:.z.p; 
            sym:first 1?`JPM`GE`BP`MSFT;
            exchange:first 1?`N`L`T;
            bid:first 1+1?10000;
            ask:first 1+1?10000;
            bidSize:first 1+1?10000;
            askSize:first 1+1?10000;
            `quote insert (time;sym;bid;ask;bidSize;askSize;exchange)}


Q2.
randTrade:{time:.z.p; 
            sym:first 1?`JPM`GE`BP`MSFT;
            side:first 1?`B`S;
            exchange:first 1?`N`L`T;
            size:first 1+1?10000;
            price:first 1+1?10000;
            `trade insert (time;sym;size;price;side;exchange)}

Q3.
filterOnSym:{[inputT;inputSyms] select from inputT where sym in inputSyms}


Q4.
getVolumePerSym:{select sum(size) by sym from trade}


Q5.
getVWAPPerSym:{select vwap:(size wavg price) by sym from trade}


Q6.
getLargerThanAvgTrades:{select from trade where size>(avg;size) fby sym}

				
Q7.
renameColumn:{[t;colName;newName]
                tableCols:cols t;					// list of col names
                tableCols:?[tableCols=colName;newName;tableCols];	// replace old col name with new in list of col names (list of symbols)
                tableCols xcol t}					// rename col using xcol (must have all cols in order to use xcol)









