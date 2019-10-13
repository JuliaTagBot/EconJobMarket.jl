"""
    clean_name(obj)::Symbol
Normalize the value such that it qualifies as a lowercase valid identifier.
# Example
```jldoctest
julia> EconJobMarket.clean_name(Symbol("3This  is a Cat:egory!4cΩ"))
:_3this_is_a_cat_egory!4cΩ
```
"""
clean_name(obj)::Symbol =
    join(isascii(x) ? lowercase(x) : x for x in string(obj)) |>
    normalizename