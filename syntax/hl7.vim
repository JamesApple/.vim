if exists('b:current_syntax') | finish | endif

syntax match fieldSeparator '|'
syntax match delimiters '[~&^\\]'
syntax match segmentType '^[A-Z]*[0-1]*'

hi def link fieldSeparator Delimiter
hi def link delimiters Operator
hi def link segmentType Identifier

let b:current_syntax = 'hl7'
