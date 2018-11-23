proc count_nucleotides(dna: string): array[0..3, int] =
  var counts = [0, 0, 0, 0]
  for nucleotide in dna:
    case nucleotide
    of 'A':
      counts[0] += 1
    of 'C':
      counts[1] += 1
    of 'G':
      counts[2] += 1
    of 'T':
      counts[3] += 1
    else:
      discard 
  return counts