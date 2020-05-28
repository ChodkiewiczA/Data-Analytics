data {
    vector[3] mu;       // location
    matrix[3,3] sigma;  // scale
}


generated quantities {
    vector[3] result = multi_normal_rng(mu,sigma);
}
