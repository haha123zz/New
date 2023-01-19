local Smoothing = {}; do
	Smoothing.TrackPercent = .5
    Smoothing.FlickPercent = .5 

    local Values = SmoothingTab:AddSection("Values"); do
        Values:AddSlider("Track Percent", .1, 1.2, Smoothing.TrackPercent, {flag = "track_slider"}, function(int)
            Smoothing.TrackPercent = int
        end)

        Values:AddSlider("Flick Percent", .1, 1.2, Smoothing.FlickPercent, {flag = "flick_slider"}, function(int)
            Smoothing.FlickPercent = int
        end)
    end
end

return Smoothing
