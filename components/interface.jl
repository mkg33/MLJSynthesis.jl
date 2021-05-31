## TYPES TO BE SUBTYPED

abstract type $TunerName$ <: MLJBase.MLJType end
MLJBase.show_as_constructed(::Type{<:$TunerName$}) = true

## METHODS TO BE IMPLEMENTED

# for initialization of state (compulsory)
setup(tuning::$TunerName$, model, range, n, verbosity) = range

# for adding extra user-inspectable information to the history:
extras(tuning::$TunerName$, history, state, E) = NamedTuple()

# for generating batches of new models and updating the state (but not
# history):
function models end

# for adding to the default report:
tuning_report(tuning::$TunerName$, history, state) = NamedTuple()

# for declaring the default number of models to evaluate:
default_n(tuning::$TunerName$, range) = DEFAULT_N

# for encoding the selection_heuristics supported by given strategy:
supports_heuristic(heuristic::Any, strategy::Any) = false
