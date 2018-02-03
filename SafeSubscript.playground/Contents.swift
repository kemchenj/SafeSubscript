//: Playground - noun: a place where people can play

import SafeSubscript

let text = "Hello, SafeSubscript"

text.ss[0]
text.ss[1024]

text.ss[..<1]
text.ss[0..<1]
text.ss[...0]
text.ss[1...]

text.ss[..<1024]
text.ss[0..<1024]
text.ss[...1024]
text.ss[1024...]
