
using(Test)

"""
Returns the index position of the target value from the given list
"""
function linear_search(input::Vector, target::Int)::Union{Int, Nothing}
    for i in input
        if(i == target) return i end
    end
end

input = collect(range(1, 500))
result = linear_search(input, 500)
@test result == 500

input = collect(range(1, 1000))
result = linear_search(input, 1001)
@test isnothing(result)