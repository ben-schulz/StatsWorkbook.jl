module StatsWorkbook

include( "./linearregression/simulate.jl" )

using .simulate: linearnormalerror

export linearnormalerror

end # module
