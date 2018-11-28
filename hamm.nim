import sequtils

proc calculate_point_mutations(strand_1, strand_2: string): int =
    var count = 0
    for group in zip(strand_1, strand_2):
        let (x, y) = group
        if x != y:
            count += 1
    return count