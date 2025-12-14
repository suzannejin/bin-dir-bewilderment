#!/usr/bin/env nextflow
params.config_file = "${projectDir}/data/christmas.json"

process SayHi {
    debug true
    input: val(name)
    script: "hello $name"
}

process SayBye {
    debug true
    input: val(name)
    script: "goodbye $name"
}

process Celebrate {
    input: tuple val(name), file(config)
    script: "celebrate.py $config $name"
}

workflow {
    names = channel.of("Andrew", "Joan")
    config = channel.from(file(params.config_file))
    
    names | SayHi
    names | SayBye
    names.combine(config) | Celebrate
}