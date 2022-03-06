pragma circom 2.0.0;

// A SNARK circuit for a "fake hash" function ==> for H(x) = X^3 - x + 6
template FakeHash(){
    signal input x;
    signal x_squared;
    signal x_cubed;
    
    signal output out;

    x_squared <== x * x;
    x_cubed <== x_squared * x;
    out <== x_cubed - x + 6;
}

component main = FakeHash();