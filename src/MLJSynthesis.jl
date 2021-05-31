module MLJSynthesis

## METHOD EXPORT
# defined in generator_script.jl
export modify_piece
export create_tuner

## METHOD IMPORT
import MLJTuning
using MLJTuning


## INCLUDE FILES
include("generator_script.jl")



end
