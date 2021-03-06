% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/RobustCoux.R
\name{robustMultExpSmoothing}
\alias{robustMultExpSmoothing}
\title{Robust Multivariate Exponential Smoothing}
\usage{
robustMultExpSmoothing(R, smoothMat = NA, startup_period = 10,
  training_period = 60, seed = 9999, trials = 50, method = "L-BFGS-B",
  lambda = 0.2)
}
\arguments{
\item{R}{data}

\item{smoothMat}{Optimal smoothing matrix. If missing it is estimated.
The procedure maybe very slow for high-dimensional data. Also,
the objective function being very noisy, optimization across
multiple runs may lead to different smoothing matrices. #'}

\item{startup_period}{length of samples required to calculate initial values}

\item{training_period}{length of samples required to calculate forecast errors
for evalualating the objective if smoothing matrix is estimated}

\item{seed}{random seed to replicate the starting values for optimization}

\item{trials}{number of strarting values to try for any optimization.
Large number of trials for high dimensions can be time consuming}

\item{method}{optimization method to use to evaluate an estimate of
smoothing matrix. Default is L-BFGS-B}

\item{lambda}{known constant as described in the paper. Defaults to 0.2}
}
\description{
Robust Multivariate Exponential Smoothing
}
\details{
Calculate Robust estimate of covariance matrix while also smoothing and
cleaning the data using the procedure described in
(Croux, Gelper, and Mahieu, 2010)
}
\author{
Rohit Arora
}

