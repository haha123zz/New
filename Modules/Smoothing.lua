local Smoothing = {}; do
	Smoothing.TrackPercent = .5
    Smoothing.FlickPercent = .5 

    local Values = SmoothingTab:AddSection("Values"); do
        Values:AddSlider("Track Percent", .1, 1.2, function(int)
            print(int)
        end)

        Values:AddSlider("Flick Percent", .1, 1.2, function(int)
            print(int)
        end)
    end
end
