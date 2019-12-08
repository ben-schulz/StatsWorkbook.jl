module model

function mean( xs )
    sum( xs ) / size( xs, 1 )
end


function leastsquarescoefficients( xs, ys )

    xmean = mean( xs )
    ymean = mean( ys )

    xdeviations = [ x - xmean for x=xs ]
    ydeviations = [ y - ymean for y=ys ]

    β1 = ( sum( [ x * y 
                for ( x, y ) = zip( xdeviations, ydeviations ) ] )
           / sum( [ x * x for x = xdeviations ] ) )

    β0 = ymean - β1 * xmean

    ( β1, β0 )

end

export leastsquarescoefficients

end #module
