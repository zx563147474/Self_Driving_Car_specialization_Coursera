r = [1 0 0;
     0 cos(pi) -sin(pi);
     0 sin(pi) cos(pi)]
t = [1 2 10]'
rt = [r t] 
k = [640 0 640;
     0 480 480;
     0 0 1]

ow = [-0.5 1.5 9 1]'
oc = rt * ow
oi = k * oc