cwlVersion: v1.0
class: Workflow

dct:creator:
  '@id': http://orcid.org/0000-0002-7681-6415
  foaf:name: Brian O'Connor
  foaf:mbox: mailto:briandoconnor@gmail.com
dct:contributor:
  foaf:name: Denis Yuen
  foaf:mbox: mailto:denis.yuen@oicr.on.ca
inputs:
  input_file: File
outputs:
  output_file:
    type: File
    outputSource: md5sum/output_file
steps:
  md5sum:
    run: tool.cwl
    in:
      input_file: input_file
    out: [output_file]
