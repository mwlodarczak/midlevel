% This is just a script for testing out reconstructability / prediction

% get the raw data from trackMonster

% first two columns correlated, last anticorrelated
raw = [1 2 8; 2 3 8; 2 4 4; 4 8 3; 6 12 2; 8 16 1];
raw = [1 2 8 1; 2 3 8 2 ; 2 4 4 3 ; 4 8 3 4 ; 6 12 2 5 ; 8 16 1 7 ];
raw = [1 2 8 8; 2 3 8 7 ; 2 4 4 6 ; 4 8 3 4 ; 6 12 2 3 ; 8 16 1 2 ];
raw = [1 2 8 8 3; 2 3 8 7 5; 2 4 4 6 6; 4 8 3 4 11 ; 6 12 2 3 18 ; 8 16 1 2 18 ];

[coeff,score,latent] = princomp(raw)

%get the rotationspec, then ablate it to only include the top 30 dimensions
   
   numToKeep = 2;
   topcoeff = coeff(:,1:numToKeep)


%take the raw data, then ablate the future-feature values

   past = raw;
   past(:,end-2) = zeros(1,length(past));
   past(:,end-1) = zeros(1,length(past));
   past(:,end) = zeros(1,length(past));

   % get estimated values for each of the top30 pc dimensions at each timepoint
   toprotated =  past * topcoeff

   inverted = inv(coeff)
   invtop = inverted(1:numToKeep,:)          % maps just the top dimensions to all raw values 
   reconstructed = toprotated * invtop

   correlations = corrcoef(reconstructed(:,5), raw(:,5));
   correlations(1,2)

%toprotated * inv(rotation) to get what the dimension-values predict for the
%  observed values, at each point, including future points 
  