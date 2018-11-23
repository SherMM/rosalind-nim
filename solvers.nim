import strutils
include utils
include dna, rna, revc

proc solve_dna() =
    let dna = read_strand()
    echo join(count_nucleotides(dna), " ")

proc solve_rna() =
    let dna = read_strand()
    echo transcribe_to_rna(dna)

proc solve_revc() =
    let dna = read_strand()
    echo complement_dna(dna)