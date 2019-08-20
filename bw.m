function fixed_data = bw(x,L,approach)
N = size(x,2);
fixed_data = zeros(size(x));
flen = floor(L/2);

if (approach =='mn')
    for j = 1:N,
        index = max(j-flen,1):min(j+flen,N);
        fixed_data(:,j) = mean(x(:,index),2);
    end
elseif (approach =='md')
    for j = 1:N,
        index = max(j-flen,1):min(j+flen,N);
        fixed_data(:,j) = median(x(:,index),2);
    end
end