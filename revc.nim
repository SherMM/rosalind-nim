proc complement_dna(dna: string): string =
    var comp = ""
    for i in countdown(dna.len-1, 0):
        let nucleotide = dna[i]
        case nucleotide
        of 'A':
            comp &= 'T'
        of 'T':
            comp &= 'A'
        of 'C':
            comp &= 'G'
        of 'G':
            comp &= 'C'
        else:
            discard
    return comp