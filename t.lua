local table = table.clone(getrenv().table)

--> https://en.wikipedia.org/wiki/Map_(higher-order_function)

function table.map<T, U>(t: {T}, f: (T, number, {T}) -> U): {U}
    local Mapped = table.create(#t)

    for k, v in t do
        Mapped[k] = f(v, k, t) 
    end

    return Mapped
end
