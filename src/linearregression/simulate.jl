using Base

module simulate

function linearnormalerror( n, slope, intercept, xmin=0, xmax=1 )

    result = zeros( Float64, n )

    xs = rand( Float64, n )
    xs = broadcast( /, xs, ( xmax - xmin ) )
    xs = broadcast( +, xs, xmin )

    ys = [ slope * x + intercept for x=xs ]
    errorterms = randn( n )
    ys = broadcast( +, ys, errorterms )

    ( xs, ys )
end

end # module
