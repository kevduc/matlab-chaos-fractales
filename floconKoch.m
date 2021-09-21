function floconKoch(C, r, theta, nbIter)
    thetaR = MatRot(theta + pi/6);
    R = MatRot(-2*pi/3);
    
    V1 = thetaR*[r; 0];
    V2 = R*V1;
    V3 = R*V2;
    
    A1 = C + V1;
    A2 = C + V2;
    A3 = C + V3;
    
    Koch(A1, A2, nbIter);
    Koch(A2, A3, nbIter);
    Koch(A3, A1, nbIter);
end