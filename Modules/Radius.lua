local Radius = {}; do
	Radius.TrackingRadius = 200
    Radius.FlickRadius = 160

    Radius.ShowCircle = false 

    local Values = RadiusTab:AddSection("Values"); do
        Values:AddSlider("Track Radius", 0, 900, Radius.TrackingRadius, {flag = "track_slider_2"}, function(int)
            Radius.TrackingRadius = int
        end)

        Values:AddSlider("Flick Radius", 0, 900, Radius.FlickRadius,, {flag = "flick_slider_2"}, function(int)
            Radius.FlickRadius = int
        end)
    end

    local Booleans = RadiusTab:AddSection("Booleans"); do
        Booleans:AddToggle("Show Circle", Radius.ShowCircle, {flag = "circle_boolean"}, function(val)
            Radius.ShowCircle = val
        end)
    end
end

return Radius
