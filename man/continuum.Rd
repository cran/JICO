% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/continuum.R
\name{continuum}
\alias{continuum}
\title{The continuum regression (CR) algorithm}
\usage{
continuum(
  X,
  Y,
  lambda,
  gam,
  om,
  U_old = matrix(, nrow = nrow(X), ncol = 0),
  D_old = matrix(, nrow = 0, ncol = 0),
  V_old = matrix(, nrow = 0, ncol = 0),
  Z_old = matrix(, nrow = 0, ncol = 0),
  verbose = FALSE
)
}
\arguments{
\item{X}{The input feature matrix}

\item{Y}{The input response vector}

\item{lambda}{Deprecated. Regularization parameter if L2 penalization is used for CR.
JICO uses zero as default.}

\item{gam}{The gamma parameter in the CR algorithm. Set gam=0 for OLS model, gam=0.5 for PLS model,
gam >= 1e10 for PCR model}

\item{om}{The desired number of weight vectors to obtain in the CR algorithm, i.e. the predefined rank of
joint or individual componenet}

\item{U_old}{The given inputs U from the previous JICO iteration step}

\item{D_old}{The given inputs D from the previous JICO iteration step}

\item{V_old}{The given inputs V from the previous JICO iteration step}

\item{Z_old}{The given inputs Z from the previous JICO iteration step}

\item{verbose}{Boolean. If it's desired to print out intermediate outputs}
}
\value{
A list of CR outputs that serve as the input for the next JICO iteration
}
\description{
This function performs an iteration update of the JICO algorithm using the CR algorithm.
Details can be found in Appendix B in the JICO paper: https://arxiv.org/pdf/2209.12388.pdf
}
