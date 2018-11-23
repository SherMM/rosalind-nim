import tables
import strutils

proc read_strand(): string =
  var strand = readLine(stdin)
  return strand

proc read_fasta_strands(): Table[string, string] =
  var strands = initTable[string, string]()
  var fasta = ""
  for line in stdin.lines:
    if startsWith(line, ">"):
      strands[line] = ""
      fasta = line
    else:
      strands[fasta] &= line
  return strands