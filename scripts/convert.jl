using C2C: parse_aeon_file
using JLD2: @save

# DONE 1.1: Use parse_aeon_file(...) to parse the model in data/models
parsed_model = parse_aeon_file("data/models/007.aeon")
# DONE 1.2: @save the result to data/parsed
@save "data/parsed/007.jld2" parsed_model