function ArbreF(A, B, h, alpha, theta, nbIter)
    MatRot1 = h*MatRot(alpha/2 + theta);
    MatRot2 = MatRot(-alpha);
    
    SubArbreF(A, B, MatRot1, MatRot2, nbIter);
end