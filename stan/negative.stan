data {
    real alpha;
    real mean_;
    real phi;
}

generated quantities {
    real neg_con = neg_binomial_rng(alpha, alpha/mean_);
    real neg_dis = neg_binomial_2_rng(mean_, phi);

    real poisson_con = poisson_rng(mean_);
}
