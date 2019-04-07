g = EvolvingGraph()

add_edge!(g, 1, 2, 1)
add_edge!(g, 1, 3, 2)
add_edge!(g, 2, 3, 3)

ns = breadth_first_impl(g, 2, 1)
nns = nodes(g)

g = IntAdjacencyList(4,3)

add_edge!(g, 1, 2, 1)
add_edge!(g, 1, 3, 2)
add_edge!(g, 2, 3, 3)
add_edge!(g, 4, 1, 1)
add_edge!(g, 4, 3, 2)
ns = breadth_first_impl(g, 1, 1)
@test (1,1) in keys(ns)
@test (3,2) in keys(ns)
@test (2,3) in keys(ns)
@test (3,3) in keys(ns)
@test !((4,2) in keys(ns))
