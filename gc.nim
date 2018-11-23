import tables

proc calculate_gc_content(strand: string): float64 =
    var gc = 0.0
    for nucleotide in strand:
        if nucleotide == 'G' or nucleotide == 'C':
            gc += 1
    return gc / strand.len.float

proc calculate_max_gc_content(strands: Table[string, string]): (string, float64) =
    var 
        max_fasta = ""
        max_gc = 0.0
    for fasta, strand in strands.pairs:
        var gc = calculate_gc_content(strand)
        if gc > max_gc:
            max_gc = gc
            max_fasta = fasta
    return (max_fasta, max_gc*100)