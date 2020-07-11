// Q1.
createDict:{x!y}

// Q2.
dictToTable:{[d] $[(count first d)=1; enlist d;     // if values are atomic, enlist
                    flip d]                         // else flip
 }

// Q3.
countHandles:{[d] (key d)!count each value d}

// Q4.
removeHandles:{x except\:y}
