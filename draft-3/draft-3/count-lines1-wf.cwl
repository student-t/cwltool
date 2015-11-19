#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: "cwl:draft-3.dev2"

inputs:
  - { id: file1, type: File }

outputs:
  - id: count_output
    type: int
    source: "#step2/output"

steps:
  - id: step1
    run: {"@import": wc-tool.cwl}
    inputs:
      - {id: file1, source: "#file1"}
    outputs:
      - {id: output}

  - id: step2
    run: {"@import": parseInt-tool.cwl}
    inputs:
      - {id: file1, source: "#step1/output"}
    outputs:
      - {id: output}
