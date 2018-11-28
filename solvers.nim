import strutils, strformat
include utils
include dna, rna, revc, gc, hamm

proc solve_dna() =
    let dna = read_strand()
    echo join(count_nucleotides(dna), " ")

proc solve_rna() =
    let dna = read_strand()
    echo transcribe_to_rna(dna)

proc solve_revc() =
    let dna = read_strand()
    echo complement_dna(dna)

proc solve_gc() =
    let strands = read_fasta_strands()
    let (fasta, gc) = calculate_max_gc_content(strands)
    echo fmt"{fasta}"
    echo fmt"{gc}"


proc solve_hamm() =
    let strands = read_strands()
    let point_mutations = calculate_point_mutations(strands[0], strands[1])
    echo point_mutations