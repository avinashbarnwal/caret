% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predictors.R
\name{predictors}
\alias{predictors}
\alias{predictors.default}
\alias{predictors.formula}
\alias{predictors.list}
\alias{predictors.rfe}
\alias{predictors.sbf}
\alias{predictors.terms}
\alias{predictors.train}
\title{List predictors used in the model}
\usage{
predictors(x, ...)
}
\arguments{
\item{x}{a model object, list or terms}

\item{\dots}{not currently used}
}
\value{
a character string of predictors or \code{NA}.
}
\description{
This class uses a model fit to determine which predictors were used in the
final model.
}
\details{
For \code{\link[randomForest]{randomForest}}, \code{\link[party]{cforest}},
\code{\link[party]{ctree}}, \code{\link[rpart]{rpart}},
\code{\link[ipred:bagging]{ipredbagg}}, \code{\link[ipred]{bagging}},
\code{\link[earth]{earth}}, \code{\link[mda]{fda}},
\code{\link[pamr]{pamr.train}}, \code{\link[superpc]{superpc.train}},
\code{\link{bagEarth}} and \code{\link{bagFDA}}, an attempt was made to
report the predictors that were actually used in the final model.

The \code{predictors} function can be called on the model object (as opposed
to the \code{\link{train}}) object) and the package will try to find the
appropriate coed (if it exists).

In cases where the predictors cannot be determined, \code{NA} is returned.
For example, \code{\link[nnet]{nnet}} may return missing values from
\code{predictors}.
}
\keyword{models}

