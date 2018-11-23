proc transcribe_to_rna(dna: string): string =
    var rna = ""
    for nucleotide in dna:
        if nucleotide == 'T':
            rna &= 'U'
        else:
            rna &= nucleotide
    return rna