function ps = midPlotspec2(overallGain)

% A specification for how patvis2 should behave.
% derived from stdPlotspec, augmented to handle all features in largest.fss

  dustyPurple = [130/256 96/256 176/256];    
  darkGreen  = [117/256 180/256 82/256];     
  mexicanFlagRed = [206/256  17/256  38/256]; 
  mexicanFlagGreen = [  0/256 104/256 71/256];
  gray = [.4 .4 .4];
  ygain = 25 * overallGain;

  % side, feature type, label, ybaseline, ygain, color, linestyle
  % note that y = 0 is at the lower left
  ps  =[{'self'}, {'vo'}, {'Intensity'},  195, ygain, dustyPurple, {'-'}; ...  
	{'self'}, {'ph'}, {'Pitch Height'},185, ygain, gray, {'-'}; ...
	{'self'}, {'pr'}, {'Pitch Range'}, 175, ygain, gray, {'-'}; ...
	{'self'}, {'pd'}, {'Disalignment'},165, ygain, dustyPurple, {'-'}; ...
	{'self'}, {'le'}, {'Lengthening'}, 155, ygain, dustyPurple, {'-'}; ...
	{'self'}, {'cr'}, {'Creakiness'},  145, ygain, gray, {'-'}; ...
	{'self'}, {'sr'}, {'Energy Flux'}, 135, ygain, dustyPurple, {'-'}; ...
	{'self'}, {'ap'}, {'Articu. Prec.'},125, ygain, dustyPurple, {'-'}; ...
	{'self'}, {'vr'}, {'V/U I Ratio'},  115, ygain, dustyPurple, {'-'}; ...
		...
	{'inte'}, {'vo'}, {'Intensity'},  100, ygain, darkGreen, {'-'}; ...
	{'inte'}, {'ph'}, {'Pitch Height'},90, ygain, gray, {'-'}; ...
	{'inte'}, {'pr'}, {'Pitch Range'}, 80, ygain, gray, {'-'}; ...
	{'inte'}, {'pd'}, {'Disalignment'},70, ygain, darkGreen, {'-'}; ...
	{'inte'}, {'le'}, {'Lengthening'}, 60, ygain, darkGreen, {'-'}; ...
	{'inte'}, {'cr'}, {'Creakiness'},  50, ygain, gray, {'-'}; ...
	{'inte'}, {'sr'}, {'Energy Flux'}, 40, ygain, darkGreen, {'-'}; ...
	{'inte'}, {'ap'}, {'Articu. Prec.'},30, ygain, darkGreen, {'-'}; ...
	{'inte'}, {'vr'}, {'V/U I Ratio'},  20, ygain, darkGreen, {'-'}; ...
       ];
end
