function Poumons(A, B, theta, nbIter)
    hold on;
    if nbIter > 0
        V = (B - A) / (cos(theta)+1) / 2;
        V1 = MatRot(theta)*V;
        V2 = MatRot(-theta)*V;
        
        A1 = A + V;
        A2 = A1 + V1;
        A3 = A2 + V2;
        
        Poumons(A, A1, theta, nbIter-1);
        Poumons(A1, A2, theta, nbIter-1);
        Poumons(A2, A3, theta, nbIter-1);
        Poumons(A3, B, theta, nbIter-1);
    else
        plot([A(1); B(1)], [A(2); B(2)], 'b');
    end
end