module testall

include( "../src/StatsWorkbook.jl" )

using .StatsWorkbook

################################################################
# linear regression
################################################################

n = 4096
slope = 5
intercept = 1

xs, ys = linearnormalerror( n, slope, intercept )

β1, β0 = leastsquarescoefficients( xs, ys )

@assert isapprox( β1, slope, atol=0.1 )
@assert isapprox( β0, intercept, atol=0.1 )


using .StatsWorkbook

end #module
