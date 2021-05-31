using MLJSynthesis

new_tuner = MLJSynthesis.create_tuner()

tuner_path = joinpath(@__DIR__, "tuners/") * new_tuner * ".jl"
MLJSynthesis.modify_piece(joinpath(@__DIR__, "components/interface.jl"), tuner_path, new_tuner)
