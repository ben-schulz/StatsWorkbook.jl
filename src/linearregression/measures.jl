module measures

function rss( xs, ys, slope, intercept )

    predictions = [ slope * x + intercept for x=xs ]
    [ ( actual - predicted )^2 for ( actual, predicted )=zip( ys, predictions ) ]

end

end #module
