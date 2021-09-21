function SubArbreF(A, B, MatRot1, MatRot2, nbIter)
    hold on;
    plot([A(1); B(1)], [A(2); B(2)], 'b');
    
    if nbIter > 0
        V1 = MatRot1*(B - A);
        SubArbreF(B, B + V1, MatRot1, MatRot2, nbIter-1);
        SubArbreF(B, B + MatRot2*V1, MatRot1, MatRot2, nbIter-1);
    end
end