using DrWatson

@quickactivate

using JLD2: load
using GraphDynamicalSystems: BooleanNetworks
using DynamicalSystems: trajectory

# TODO 2.1 load(...) the parsed file from data/parsed/007.jld2
parsed_model = 
async_bn = abn(parsed_model)

# TODO 2.2 collect 10 trajectories of length 100
# hint: trajectory(abn::AsyncronousBooleanNetwork, length) gives one trajectory
trajectories = 

# TODO 2.3 Save those trajectories to data/sims/
# How can you keep track of the parameters used?