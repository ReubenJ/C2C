using DrWatson

@quickactivate

using JLD2: load
using GraphDynamicalSystems: BooleanNetworks
using DynamicalSystems: trajectory
using Parameters

# TODO 2.1 load(...) the parsed file from data/parsed/007.jld2
parsed_model = load(datadir("parsed", "007.jld2"))["parsed_model"]
async_bn = BooleanNetworks.abn(parsed_model)

# TODO 2.2 collect 10 trajectories of length 100
# hint: trajectory(abn::AsyncronousBooleanNetwork, length) gives one trajectory
@with_kw struct TrajPara
    n_tr=10
    l_tr=100
end
params = TrajPara()
trajectories = [trajectory(async_bn, params.l_tr) for _ in 1:params.n_tr]

# TODO 2.3 Save those trajectories to data/sims/
# How can you keep track of the parameters used?
@tagsave(datadir("sims", savename(params, "jld2")), @strdict trajectories)
