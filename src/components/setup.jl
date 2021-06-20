"""
The comment symbol '#' is required to prevent unused field
from making the programme syntactically incorrect.
"""
mutable struct $TunerName$ <: TuningStrategy
    #$field$::$Type$
    #$field$::$Type$
    #$field$::$Type$
    #$field$::$Type$
    #$field$::$Type$
end

# constructor

$TunerName$(;
            #$keyword$
            #$keyword$
            #$keyword$
            #$keyword$
            #$keyword$
            #$keyword$
            #$keyword$
            #$keyword$
            #$keyword$
            #$keyword$
           ) =
$TunerName$()

# for initialization of state
setup(tuning::$TunerName$, model, range, n, verbosity) = $range$
