// Q1.
isFile:{[filePath]
        if[()~key filePath; :0b];                   // if file doesn't exist
        if[0b=((hsym filePath)~filePath); :0b];     // if filePath not a hsym
        1b}

// Q2.
loadCSV1:{[filePath;types] (types;enlist csv) 0: (hsym filePath)}  

// Q3.
loadCSV2:{[f;t] 
        fp: hsym f;
        head: `$"," vs first read0 fp;
        data: flip vs[",";] each 1_read0 fp;
        flip head!(t$data)}

// Q4.
changeDelimiter:{[filePath;oldDelim;newDelim]
                    input: read0 filePath;
                    replace:ssr[;oldDelim;newDelim];
                    input:replace each input;
                    filePath 0: input}