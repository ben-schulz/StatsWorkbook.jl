module StatsWorkbook

include( "./linearregression/simulate.jl" )
include( "./linearregression/measures.jl" )
include( "./linearregression/model.jl" )

using .simulate: linearnormalerror
using .measures: rss
using .model: leastsquarescoefficients

export linearnormalerror
export rss
export leastsquarescoefficients

end # module
