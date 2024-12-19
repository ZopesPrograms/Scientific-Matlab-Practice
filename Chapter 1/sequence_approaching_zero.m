function [result, error] = sequence_approaching_zero(n)
prev_term = 1 - exp(-1);
result = prev_term;

k = 0;
while k < n
    disp(prev_term);
    result_provisional = 1 - (k+1)*prev_term;
    prev_term = result;

    result = result_provisional;
    k = k+1;
end
error = abs(0 - result);
return