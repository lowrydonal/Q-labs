Q1.
getColsForSyms:{[inputTable;inputCols;inputSym]
                t:inputTable;
                c:enlist(=;`sym;enlist inputSym);
                b:0b;
                a:inputCols!inputCols;
                ?[t;c;b;a]}


Q2.
dynamicBy:{[inputTab;byCols]
            t:inputTab;
            c:();
            b:enlist[byCols]!enlist byCols;
            a:();
            ?[t;c;b;a]}