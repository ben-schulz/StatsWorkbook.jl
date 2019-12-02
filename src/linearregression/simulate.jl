using Base

module simulate

function linearnormalerror( n, slope, intercept,
                            mean=0, stdev=1, xmin=0, xmax=1 )

    result = Base.zeros( Float64, n )

    xs = Base.rand( Float64, n )
    xs = broadcast( /, xs, ( xmax - xmin ) )
    xs = broadcast( +, xs, xmin )

    ys = [ slope * x + intercept for x=xs ]
    errorterms = Base.randn( n )
    ys = broadcast( +, ys, errorterms )

    ( xs, ys )
end

export linearnormalerror

end # module
