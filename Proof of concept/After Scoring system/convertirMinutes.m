

function [heures, minutes] = convertirMinutes (temps_minutes)
  temps_minutes=floor(temps_minutes);
  heures = fix(temps_minutes / 60);  % Division entière pour obtenir le nombre d'heures
  minutes = mod(temps_minutes, 60);  % Modulo pour obtenir le nombre de minutes restantes
  heures = mod(heures, 24);
endfunction
