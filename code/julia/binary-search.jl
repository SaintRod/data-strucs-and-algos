using(Test)

"""
Returns the index position of the target value from the given list
"""
function binary_search(input::Vector, target::Int)::Union{Int, Nothing}
    first = 1
    last = length(input)

    while first <= last
        mp = fld((first + last), 2)

        if input[mp] == target return mp end

        if input[mp] < target
            first = mp + 1
        else
            last = mp - 1
        end

    end

    return nothing

end

input = collect(range(1, 500))
result = binary_search(input, 500)
@test result == 500

input = collect(range(1, 1000))
result = binary_search(input, 1001)
@test isnothing(result)
