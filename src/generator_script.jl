# Generator script for synthesized tuners.

function modify_piece(file_in, file_out, replace_with)
    f_in = readlines(file_in)
    open(file_out, append=true) do io
        for line in f_in
            write(io, replace(line, "\$TunerName\$" => replace_with))
            write(io, "\n")
        end
    end
end

function create_tuner()
    i = 0
    tuner_file = "tuner_" * string(i)
    file_created = false

    path = "code/tuners/"

    if isdir(path)
        println("Directory already exists. Appending files to existing directory.")
    else
        mkdir("code/tuners")
    end

    while !file_created
        if isfile(path * tuner_file * ".jl")
            println("Tuner file " * tuner_file * " already exists.")
            i += 1
            tuner_file = "tuner_" * string(i)
        else
            open(path * tuner_file * ".jl", write=true) do io
                write(io, "#" * tuner_file * ": new tuner file" * "\n\n")
                file_created = true
            end
            println("Created new tuner file: " * tuner_file * ".")
        end
    end

    return tuner_file

end

function main()
    new_tuner = create_tuner()
    tuner_path = "code/tuners/" * new_tuner * ".jl"
    modify_piece("components/interface.jl", tuner_path, new_tuner)
end

main()
