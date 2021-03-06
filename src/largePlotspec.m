function ps = largePlotspec()

% A specification for how patvis2 should behave.
% derived from stdPlotspec, augmented to handle all features in largest.fss

  dustyPurple = [140/256 106/256 186/256];    
  darkGreen  = [127/256 190/256 92/256];     
  mexicanFlagRed = [206/256  17/256  38/256]; 
  mexicanFlagGreen = [  0/256 104/256 71/256];

  % side, feature type, label, ybaseline, ygain, color, linestyle
  % note that y = 0 is at the lower left
  ps  =[{'self'}, {'vo'}, {'Intensity'},  215, 25, dustyPurple, {'-'}; ...
	{'self'}, {'cr'}, {'Creakiness'}, 205, 25, dustyPurple, {'-'}; ...
	{'self'}, {'sr'}, {'Energy Flux'},    195, 25, dustyPurple, {'-'}; ...
	{'self'}, {'ph'}, {'Pitch Height'},185, 25, dustyPurple, {'-'}; ...
	{'self'}, {'pr'}, {'Pitch Range'}, 175, 25, dustyPurple, {'-'}; ...
	{'self'}, {'le'}, {'Lengthening'}, 165, 25, dustyPurple, {'-'}; ...
	{'self'}, {'pd'}, {'Disalignment'},155, 25, dustyPurple, {'-'}; ...
	{'self'}, {'sf'}, {'Speak. Frac.'},145, 25, dustyPurple, {'-'}; ...
	{'self'}, {'vf'}, {'Voicing Frac.'},135, 25, dustyPurple, {'-'}; ...
	{'self'}, {'ap'}, {'Articu. Prec.'},125, 25, dustyPurple, {'-'}; ...
		...
	{'inte'}, {'vo'}, {'Intensity'},  110, 25, darkGreen, {'-'}; ...
	{'inte'}, {'cr'}, {'Creakiness'},  100, 25, darkGreen, {'-'}; ...
	{'inte'}, {'sr'}, {'Energy Flux'},     90, 25, darkGreen, {'-'}; ...
	{'inte'}, {'ph'}, {'Pitch Height'},80, 25, darkGreen, {'-'}; ...
	{'inte'}, {'pr'}, {'Pitch Range'}, 70, 25, darkGreen, {'-'}; ...
	{'inte'}, {'le'}, {'Lengthening'}, 60, 25, darkGreen, {'-'}; ...
	{'inte'}, {'pd'}, {'Disalignment'},50, 25, darkGreen, {'-'}; ...
	{'inte'}, {'sf'}, {'Speak. Frac.'},40, 25, darkGreen, {'-'}; ...
	{'inte'}, {'vf'}, {'Voicing Frac.'},30, 25, darkGreen, {'-'}; ...
	{'inte'}, {'ap'}, {'Articu. Prec.'},20, 25, darkGreen, {'-'}; ...
       ];
end
