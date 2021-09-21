function Koch(A, B, nbIter)
    hold on;
    if nbIter > 0
        theta = pi/3;
        
        V = (B - A) / 3;
        V1 = MatRot(theta)*V;
        
        A1 = A + V;
        A2 = A1 + V1;
        A3 = A1 + V;
        
        Koch(A, A1, nbIter-1);
        Koch(A1, A2, nbIter-1);
        Koch(A2, A3, nbIter-1);
        Koch(A3, B, nbIter-1);
    else
        plot([A(1); B(1)], [A(2); B(2)], 'b');
    end
end