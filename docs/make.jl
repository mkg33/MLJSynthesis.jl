using Pkg
using Documenter
using MLJ
using MLJSynthesis

makedocs(
    sitename="MLJSynthesis",
    pages = [
        "Introduction" => "index.md",
        "Tutorials" => [
            "Basic example" => "Tutorials/basic_example.md",
            "Distributed synthesis" => "Tutorials/distributed_synthesis.md",
            "Integration with MLJ.jl" => "Tutorials/MLJ_integration.md"
        ],
        "API" => "API.md"
    ],
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true"
    )
)

#=
deploydocs(
    repo = "github.com/mkg33/MLJSynthesis.jl.git",
    push_preview=true
)
=#
