type Note
    value::Uint8
    duration::Uint64
    position::Uint64
    channel::Uint8
    velocity::Uint8

    Note(value, duration, position, channel, velocity=0x0F) =
        if channel > 0x0F
            error( "Channel must be less than 128" )
        elseif velocity > 0x0F
            error( "Velocity must be less than 128" )
        else
            new(value, duration, position, channel, velocity)
        end
end
