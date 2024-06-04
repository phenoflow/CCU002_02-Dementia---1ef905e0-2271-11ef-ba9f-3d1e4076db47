cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_02-dementia-delirium---secondary:
    run: ccu002_02-dementia-delirium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  ccu002_02-dementia-alzheimer---secondary:
    run: ccu002_02-dementia-alzheimer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-delirium---secondary/output
  ccu002_02-dementia-dementium---secondary:
    run: ccu002_02-dementia-dementium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-alzheimer---secondary/output
  ccu002_02-dementia-declined---secondary:
    run: ccu002_02-dementia-declined---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-dementium---secondary/output
  ccu002_02-dementia-presenile---secondary:
    run: ccu002_02-dementia-presenile---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-declined---secondary/output
  ccu002_02-dementia-uncomplicated---secondary:
    run: ccu002_02-dementia-uncomplicated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-presenile---secondary/output
  ccu002_02-dementia---secondary:
    run: ccu002_02-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-uncomplicated---secondary/output
  ccu002_02-dementia-gerstmannstraussler-scheinker---secondary:
    run: ccu002_02-dementia-gerstmannstraussler-scheinker---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia---secondary/output
  nonfamilial-ccu002_02-dementia---secondary:
    run: nonfamilial-ccu002_02-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-gerstmannstraussler-scheinker---secondary/output
  frontotemporal-ccu002_02-dementia---secondary:
    run: frontotemporal-ccu002_02-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: nonfamilial-ccu002_02-dementia---secondary/output
  subcortical-ccu002_02-dementia---secondary:
    run: subcortical-ccu002_02-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: frontotemporal-ccu002_02-dementia---secondary/output
  ccu002_02-dementia-creutzfeldtjakob---secondary:
    run: ccu002_02-dementia-creutzfeldtjakob---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: subcortical-ccu002_02-dementia---secondary/output
  ccu002_02-dementia-invitation---secondary:
    run: ccu002_02-dementia-invitation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-creutzfeldtjakob---secondary/output
  ccu002_02-dementia-picks---secondary:
    run: ccu002_02-dementia-picks---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-invitation---secondary/output
  ccu002_02-dementia-agreed---secondary:
    run: ccu002_02-dementia-agreed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-picks---secondary/output
  ccu002_02-dementia-depression---secondary:
    run: ccu002_02-dementia-depression---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-agreed---secondary/output
  ccu002_02-dementia-review---secondary:
    run: ccu002_02-dementia-review---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-depression---secondary/output
  ccu002_02-dementia-associated---secondary:
    run: ccu002_02-dementia-associated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-review---secondary/output
  ccu002_02-dementia-paranoia---secondary:
    run: ccu002_02-dementia-paranoia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-associated---secondary/output
  ccu002_02-dementia-disturbance---secondary:
    run: ccu002_02-dementia-disturbance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-paranoia---secondary/output
  degenerative-ccu002_02-dementia---secondary:
    run: degenerative-ccu002_02-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-disturbance---secondary/output
  ccu002_02-dementia-parkinsons---secondary:
    run: ccu002_02-dementia-parkinsons---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: degenerative-ccu002_02-dementia---secondary/output
  ccu002_02-dementia-letter---secondary:
    run: ccu002_02-dementia-letter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-parkinsons---secondary/output
  frontal-ccu002_02-dementia---secondary:
    run: frontal-ccu002_02-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-letter---secondary/output
  ccu002_02-dementia-quality---secondary:
    run: ccu002_02-dementia-quality---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: frontal-ccu002_02-dementia---secondary/output
  ccu002_02-dementia-prion---secondary:
    run: ccu002_02-dementia-prion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-quality---secondary/output
  progressive-ccu002_02-dementia---secondary:
    run: progressive-ccu002_02-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-prion---secondary/output
  ccu002_02-dementia-advance---secondary:
    run: ccu002_02-dementia-advance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: progressive-ccu002_02-dementia---secondary/output
  mixed-ccu002_02-dementia---secondary:
    run: mixed-ccu002_02-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-advance---secondary/output
  vascular-ccu002_02-dementia---secondary:
    run: vascular-ccu002_02-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: mixed-ccu002_02-dementia---secondary/output
  ccu002_02-dementia-multiinfarct---secondary:
    run: ccu002_02-dementia-multiinfarct---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: vascular-ccu002_02-dementia---secondary/output
  arteriosclerotic-ccu002_02-dementia---secondary:
    run: arteriosclerotic-ccu002_02-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_02-dementia-multiinfarct---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: arteriosclerotic-ccu002_02-dementia---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
