##/*****************************************************************************
## * SIENA: Simulation Investigation for Empirical Network Analysis
## *
## * Web: http://www.stats.ox.ac.uk/~snijders/siena
## *
## * File: sienaprint.r
## *
## * Description: This file contains the print and summary modules for the
## * classes siena, sienaFit, sienaDependent, sienaAlgorithm, and sienaBayesFit
## * Note: $requestedEffects used everywhere instead of $effects,
## * because the latter also includes all main effects corresponding to
## * included interaction effects,
## * even if these main effects were not requested.
## *
## ****************************************************************************/
##@print.siena Methods
print.siena <- function(x, ...)
{
    ##@onlys internal print.siena; prints matrix attributes of x$depvar
	onlys <- function(x, attrib){
	# function to print the attribute attrib (character string)
	# of object x$depvars
	# This attribute must be a logical matrix
	# with named columns, and rows indicating periods.
		textattr <- deparse(substitute(attrib),  backtick=FALSE)
		uponlys <- as.matrix(sapply(x$depvars, function(y){attr(y,attrib)}))
		if (x$observations == 2)
		# only one period
		{
			uponlys <- t(uponlys)
		}
		# now rows are periods; columns are dependent variables
		for (j in 1:dim(uponlys)[2])
		{
			if (any(uponlys[,j]))
			{
				cat(textattr)
				cat(":  ", colnames(uponlys)[j], ":    ", sep="")
				if (all(uponlys[,j]))
				{
					cat("all periods\n")
				}
				else
				{
					word <-
						ifelse((sum(uponlys[,j]) <= 1), "period ", "periods ")
					cat(word)
					cat(which(uponlys[,j]), sep=", ")
					cat("\n")
				}
			}
		}
	}
# begin main method siena.print proper
	if (!inherits(x, "siena"))
	{
        stop("not a legitimate Siena data object")
	}
	cat('Dependent variables: ', paste(names(x$depvars), collapse=", "), "\n")
	cat('Number of observations:', x$observations, "\n\n")
	if (length(x$compositionChange) > 0)
	{
		cat('With composition change.\n')
	}
	if (!is.null(x$nodeSet))
	{
		tmp <- sapply(x$nodeSet, length)
		if (length(x$nodeSet) <= 1)
		{
			tmp <- c('Nodeset        ' = 'Number of nodes', tmp)
		}
		else
		{
			tmp <- c('Nodesets       ' = 'Number of nodes', tmp)
		}
		print(tmp, quote=FALSE)
		cat("\n")
	}

	for (j in (1:length(x$depvars)))
	{
		xj <- x$depvars[[j]]
		mymat <- matrix("", 7, 2)
		mymat[1,] <- c("Dependent variable", attr(xj, "name"))
		mymat[2,] <- c("Type",               attr(xj, "type"))
		if (attr(xj,"type") == "oneMode")
		{
			if (attr(xj,"symmetric"))
			{
				mymat[2,2] <- paste(mymat[2,2],", symmetric", sep="")
			}
		}
		mymat[3,] <- c("Observations",       attr(xj,  "netdims")[3])
		if (attr(xj, "type") == "bipartite")
		{
			mymat[4,] <- c("First nodeset ", attr(xj, "nodeSet")[1])
			mymat[5,] <- c("Second nodeset ",attr(xj, "nodeSet")[2])
			nrows <- 5
		}
		else
		{
			mymat[4,] <- c("Nodeset ", attr(xj, "nodeSet"))
			nrows <- 4
		}
		if (attr(xj, "type") == "behavior")
		{
			mymat[nrows+1,] <- c("Range",
				paste(attr(xj, "range2"),  collapse=" - "))
		}
		else
		{
			mymat[nrows+1,] <- c("Densities",
				paste(signif(attr(xj, "density"), 2),  collapse=" "))
		}
		mymat2 <- apply(mymat[0:nrows+1,], 2, format)
		write.table(mymat2, row.names=FALSE, col.names=FALSE, quote=FALSE)
		cat("\n")
	}

	if (length(x$cCovars) > 0)
	{
		cat('Constant covariates: ', paste(names(x$cCovars), collapse=", "), "\n")
	}
	if (length(x$vCovars) > 0)
	{
		cat('Changing covariates: ',
			paste(names(x$vCovars), collapse = ", "), "\n")
	}
	if (length(x$dycCovars) > 0)
	{
		cat('Constant dyadic covariates: ',
			paste(names(x$dycCovars), collapse=", "), "\n")
	}
	if (length(x$dyvCovars) > 0)
	{
		cat('Changing dyadic covariates: ',
			paste(names(x$dyvCovars), collapse=", "), "\n")
	}

	onlys(x, 'uponly')
	onlys(x, 'downonly')

	attrs <- attributes(x)
	highers <- attrs[["higher"]]
	disjoints <- attrs[["disjoint"]]
	atleastones <- attrs[["atLeastOne"]]
	if (any(highers))
	{
		sepsign <- ifelse((sum(highers) <= 1),'',', ')
		cat("Higher: ")
		cat(names(highers)[highers], sep=sepsign, "\n")
	}
	if (any(disjoints))
	{
		sepsign <- ifelse((sum(disjoints) <= 1),'','; ')
		cat("Disjoint: ")
		cat(names(disjoints)[disjoints], sep=sepsign,  "\n")
	}
	if (any(atleastones))
	{
		sepsign <- ifelse((sum(atleastones) <= 1),'',', ')
		cat("atLeastOne: ")
		cat(names(atleastones)[atleastones], sep=sepsign,  "\n")
	}
	invisible(x)
}
##@print.sienaGroup Methods
print.sienaGroup <- function(x, ...)
{
	if (!inherits(x, "sienaGroup"))
	{
        stop("not a legitimate Siena group data object")
	}
	att <- attributes(x)
	cat('Dependent variables: \n')
	cat(paste(att$netnames, ":", att$types,'\n'))
	cat('Total number of periods:', att$observations)
	cat("\n")
	invisible(x)
}

print.sienaDependent <- function(x, ...)
{
	if (!inherits(x, "sienaDependent"))
	{
        stop("not a legitimate Siena dependent variable object")
	}
	mymat <- matrix("", 4, 2)
	mymat[1,] <- c("Type",               attr(x, "type"))
	mymat[2,] <- c("Observations",       attr(x,  "netdims")[3])
	if (attr(x, "type") == "bipartite")
	{
		mymat[3,] <- c("First nodeset ",
						paste(attr(x, "nodeSet")[1], " (", attr(x, "netdims")[1],
							" elements)", sep=""))
		mymat[4,] <- c("Second nodeset ",
						paste(attr(x, "nodeSet")[2], " (", attr(x, "netdims")[2],
							" elements)", sep=""))
		nrows <- 4
	}
	else
	{
		mymat[3,] <- c("Nodeset ",
						paste(attr(x, "nodeSet"), " (", attr(x, "netdims")[1],
							" elements)", sep=""))
		nrows <- 3
	}

	mymat <- apply(mymat, 2, format)
	write.table(mymat[1:nrows,], row.names=FALSE, col.names=FALSE, quote=FALSE)
	cat("\n")
	invisible(x)
}

##@print.sienaFit Methods
print.sienaFit <- function(x, tstat=TRUE, ...)
{
	if (!inherits(x, "sienaFit"))
	{
        stop("not a legitimate Siena model fit")
	}
	if (!x$OK)
	{
		cat("Error end of estimation algorithm\n")
	}
	else if (x$termination == "UserInterrupt")
	{
		cat("User interrupted run, object possibly incomplete\n")
	}
	else
	{
		if(x$x$simOnly)
		{
		cat("Parameter values\n\n")
		}
		else
		{
			if (!is.null(x$gmm))
			{
				if (x$gmm)
				{
					cat("Estimated by Generalized Method of Moments\n\n")
				}
			}
			if (x$maxlike)
			{
				cat("Estimated by Maximum Likelihood\n\n")
			}
		cat("Estimates, standard errors and convergence t-ratios\n\n")
		}
		tmp <- sienaFitThetaTable(x, tstat=tstat)
		mydf <- tmp$mydf
		mymat <- as.matrix(mydf)
		mymat[, 'value'] <- format(round(mydf$value, digits=4))
		if(x$x$simOnly)
		{
			mymat[, 'se'] <- ' '
			mymat[, 'tstat'] <- ' '
		}
		else
		{
			mymat[, 'se'] <- format(round(mydf$se, digits=4))
			mymat[, 'tstat'] <- paste(" ", format(round(mydf$tstat, digits=4)))
			mymat[is.na(mydf$tstat), 'tstat'] <- ' '
		}
		mymat[, 'type'] <- format(mymat[, 'type'])
		mymat[, 'text'] <- format(mymat[, 'text'])
		mymat[mydf$row < 1, 'row'] <-
			format(mydf[mydf$row < 1, 'row'])
		mymat[mydf[,'row'] >= 1, 'row'] <-
			paste(format(mydf[mydf$row >= 1, 'row']), '.', sep='')
		if(x$x$simOnly)
		{
			mymat <- rbind(c(rep("", 4), "Parameter", "", "", "",
						 ""),
					   c(rep("", 4), "  value",rep("", 4)), mymat)
		}
		else
		{
			mymat <- rbind(c(rep("", 4), "Estimate", "", "Standard", "",
						 "Convergence"),
					   c(rep("", 6),  "  Error", "", "  t-ratio"), mymat)
		}
		mymat <- apply(mymat, 2, format)
		tmp1 <- apply(mymat, 1, function(x) paste(x, collapse=" "))
		addtorow <- tmp$addtorow
		for (i in 1:length(tmp1))
		{
			if (length(addtorow$command) > 0)
			{
				for (j in 1:length(addtorow$command))
				{
					ii <- match(i-1, addtorow$pos[[j]])
					if (!is.na(ii))
						if (i == 2 | addtorow$command[j] == 'Network Dynamics')
							cat( addtorow$command[j], '\n')
						else
							cat('\n', addtorow$command[j], '\n', sep='')
				}
			}
			cat(tmp1[i], '\n')
		}

		if(x$x$simOnly)
		{
	cat('\nEstimated means and standard deviations, standard errors of the mean \n')
			if (x$x$maxlike)
			{
				cat('Note: statistics for ML simulations are score functions.\n')
			}
			dmsf <- diag(x$msf)
			mean.stats <- colMeans(x$sf) + x$targets
#  cov.dev may be dropped - just for now (07-10-13) I keep it in
#			cov.dev <- x$msf
			sem <- sqrt(dmsf/dim(x$sf)[1])
			if (x$x$dolby)
			{
				scores <- apply(x$ssc, c(1,3), sum)	 # x$nit by x$qq matrix
				mean.scores <- colMeans(scores)
				mean.stats <- mean.stats - (x$regrCoef * mean.scores)
				sem <- sem*sqrt(1 - (x$regrCor)^2)
			}
			if (!is.null(x$gmm))
			{
				if (x$gmm)
				{
					selection <- which(x$requestedEffects$type=='gmm' |
									x$requestedEffects$type=='rate')
				}
				else
				{
					selection <- 1:nrow(x$requestedEffects)
				}
			}
			mymess1 <- paste(format(1:x$qq,width=3), '. ',
					format(x$requestedEffects$functionName[selection], width = 56),
					format(round(mean.stats, 3), width=8, nsmall=3), ' ',
					format(round(sqrt(dmsf), 3) ,width=8, nsmall=3), ' ',
					format(round(sem, 4) ,width=8, nsmall=4),
					rep('\n',x$qq), sep='')
			cat(as.matrix(mymess1),'\n', sep='')
		}
		else
		{
			cat(c("\nOverall maximum convergence ratio: ",
					sprintf("%8.4f", x$tconv.max), "\n\n"))
		}
		if (sum(x$test) > 0)
		{
			sc.t <- score.Test(x)
			cat('\nScore test for ', sc.t$df, ' parameters:\n',
			    'chi-squared = ', round(sc.t$chisquare,2),
				', p = ', sprintf("%6.4f", sc.t$pvalue),'.\n', sep='')
		}

		if (any(x$x$MaxDegree > 0)) {
			cat('\nDegrees constrained to maximum values:\n')
			for (i in 1:length(x$x$MaxDegree)){
					cat(names(x$x$MaxDegree)[i],':',x$x$MaxDegree[i],'\n')}
			cat('\n')
		}
		if (any(x$x$UniversalOffset > 0)) {
	cat(' Offsets for symmetric networks, and for settings model (if any): \n')
			for (i in 1:length(x$x$UniversalOffset)){
					cat(names(x$x$UniversalOffset)[i],':',x$x$UniversalOffset[i],'\n')}
		}
		if (any(x$x$modelType != 1)) {
			cat('\n Model Type:\n')
			for (i in 1:length(x$x$modelType)){
					cat(names(x$x$modelType)[i],':',
							ModelTypeStrings(x$x$modelType[i]),'\n')}
			cat('\n')
		}
		if (any(x$x$behModelType != 1)) {
			cat('\n Behavioral Model Type:\n')
			for (i in 1:length(x$x$behModelType)){
					cat(names(x$x$behModelType)[i],':',
				BehaviorModelTypeStrings(x$x$behModelType[i]),'\n')}
			cat('\n')
		}

		try(if (x$errorMessage.cov > '')
				{cat('\nWarning:', x$errorMessage.cov, '\n')}, silent=TRUE)
			# "Try" for downward compatibility
		cat("\nTotal of", x$n, "iteration steps.\n\n")
		if ((x$x$dolby)&(x$x$simOnly))
		{
		cat('(Standard errors of the mean are less than s.d./', sqrt(x$n),' \n',
				sep='')
		cat('because of regression on scores (Dolby option).) \n')
		}
		if (x$termination == "UserInterrupt")
			cat(" \n*** Warning ***",
				"Estimation terminated early at user request.\n")
	}
	invisible(x)
}

##@summary.sienaFit Methods
summary.sienaFit <- function(object, ...)
{
	if (!inherits(object, "sienaFit"))
	{
		stop("not a legitimate Siena model fit")
	}
	class(object) <- c("summary.sienaFit", class(object))
	object
}

##@print.summary.sienaFit Methods
print.summary.sienaFit <- function(x, matrices=TRUE, ...)
{
	if (!inherits(x, "summary.sienaFit"))
	{
        stop("not a legitimate summary of a Siena model fit")
	}
	print.sienaFit(x)

    if (x$maxlike)
    {
        cat('Autocorrelations during phase 3 : \n')
        sfl <- apply(x$sf, 2,
                       function(y)acf(y, plot=FALSE, lag.max=1)[[1]][[2]])
        cat(paste(format(1:x$pp, width=3), '. ',
                     format(sfl, width=8, digits=4),
                     '\n', collapse="", sep=""))
        cat ('\n')
    }

	if (sum(x$test) > 0) ## we have some score tests
	{
		testn <- sum(x$test)
		if (x$maxlike)
		{
			cat("Score test <c>\n\n")
		}
		else
		{
			cat("Generalised score test <c>\n\n")
		}
		cat("Testing the goodness-of-fit of the model restricted by\n")
		j <- 0
		for (k in 1:x$pp)
		{
			if (x$test[k])
			{
				j <- j + 1
				cat(c(" (", j, ")   ",
					  format(paste(x$requestedEffects$type[k], ":  ",
								   x$requestedEffects$effectName[k],
								   sep=""),
							 width=50), " = ",
					  sprintf("%8.4f", x$theta[k]),"\n"),
					sep = "")
			}
		}
		cat("_________________________________________________\n")
		cat("                ")
		cat("   \n")
		if (testn > 1)
		{
			cat('Joint test:\n-----------\n')
		}
		cat(c('   c = ',sprintf("%8.4f", x$testresOverall),
			  '   d.f. = ',j,'   p-value '), sep='')
		pvalue <- 1 - pchisq(x$testresOverall, j)
		if (!is.na(pvalue))
		{
			if (pvalue < 0.0001)
			{
				cat('< 0.0001\n')
			}
			else
			{
				cat(c('= ', sprintf("%8.4f\n", pvalue)), sep = '')
			}
		}
		else
		{
			Report('  NA  ',outf)
		}
		if (testn==1)
		{
			cat(c('\n   one-sided (normal variate): ',
					sprintf("%8.4f", x$testresulto[1])), sep = '')
		}
		if (testn> 1)
		{
			cat('\n\n')
			for (k in 1:j)
			{
				cat(c('(', k, ') tested separately:\n'), sep='')
				cat('-----------------------\n')
				cat(' - two-sided:\n')
				cat(c('  c = ', sprintf("%8.4f", x$testresult[k]),
						'   d.f. = 1  p-value '), sep = '')
				pvalue<- 1-pchisq(x$testresult[k],1)
				if (!is.na(pvalue))
				{
					if (pvalue < 0.0001)
					{
						cat('< 0.0001\n')
					}
					else
					{
						cat(c('= ', sprintf("%8.4f", pvalue), '\n'), sep = '')
					}
				}
				else
				{
					Report('  NA  ',outf)
				}
				cat(c(' - one-sided (normal variate): ',
						sprintf("%8.4f", x$testresulto[k])), sep = '')
				if (k < j)
				{
					cat('\n\n')
				}
			}
		}
		cat('    \n_________________________________________________\n\n')
		cat('One-step estimates: \n\n')
		for (i in 1 : x$pp)
		{
			onestepest <- x$oneStep[i] + x$theta[i]
			cat(c(format(paste(x$requestedEffects$type[i], ':  ',
							x$requestedEffects$effectName[i], sep = ''),
						width=50),
					sprintf("%8.4f", onestepest), '\n'), sep = "")
		}
		cat('\n')
	}
	if ((matrices)&(x$OK)&(!is.null(x$covtheta)))
	{
		cat("Covariance matrix of estimates (correlations below diagonal)\n\n")
		covcor <- x$covtheta
		correl <- x$covtheta / sqrt(diag(x$covtheta))[row(x$covtheta)] /
			sqrt(diag(x$covtheta))[col(x$covtheta)]
		covcor[lower.tri(covcor)] <- correl[lower.tri(correl)]
		printMatrix(format(round(t(covcor),digits=3),width=12))
		cat("\nDerivative matrix of expected statistics X by parameters:\n\n")
		if (!is.null(x$gmm))
		{
			if (x$gmm)
			{
				printMatrix(format(round(x$gamma,digits=3),width=12))
			}
			else
			{
				printMatrix(format(round(x$dfra,digits=3),width=12))
			}
		}
		cat("\nCovariance matrix of X (correlations below diagonal):\n\n")
		covcor <- x$msf
		correl <- x$msf / sqrt(diag(x$msf))[row(x$msf)] /
			sqrt(diag(x$msf))[col(x$msf)]
		covcor[lower.tri(covcor)] <- correl[lower.tri(correl)]
		printMatrix(format(round(t(covcor),digits=3),width=12))
	}
	invisible(x)
}

##@printMatrix Miscellaneous
printMatrix <- function(mat)
{
	cat(mat, sep=c(rep.int(' ', ncol(mat) - 1), '\n'))
}

##@print.sienaAlgorithm Methods
print.sienaAlgorithm <- function(x, ...)
{
	cat(' Siena Algorithm specification.\n')
	cat(' Project name:', x$projname, '\n')
	cat(' Use standard initial values:', x$useStdInits, '\n')
	cat(' Random seed:', objectOrNull(x$randomSeed),'\n')
	cat(' Number of subphases in phase 2:', x$nsub, '\n')
	if (x$simOnly)
	{
		cat(' Simulation only', '\n')
	}
	else
	{
		if (!is.null(x$n2start))cat(' Length of first subphase:', x$n2start, '\n')
		cat(' Starting value of gain parameter:', x$firstg, '\n')
		cat(' Reduction factor for gain parameter:', objectOrNull(x$reduceg), '\n')
		cat(' Diagonalization parameter:', x$diagonalize, '\n')
		cat(' Double averaging after subphase:', x$doubleAveraging, '\n')
	}
	cat(' Dolby noise reduction:', x$dolby, '\n')
	if (any(x$MaxDegree > 0))
	{
		cat(' Restrictions on degree in simulations: ')
		cat(x$MaxDegree,'\n')
	}
	if (any(x$UniversalOffset > 0))
	{
		cat(' Offsets for universal setting: ')
		cat(x$UniversalOffset,'\n')
	}
	cat(' Method for calculation of derivatives:',
		c('Scores', 'Finite Differences')[as.numeric(x$FinDiff.method) + 1],
		'\n')
	cat(' Number of subphases in phase 2:', x$nsub, '\n')
	cat(' Number of iterations in phase 3:', x$n3, '\n')
	if (x$maxlike)
	{
		cat(" Estimation by maximum likelihood\n")
	}
	else
	{
		if (is.na(x$cconditional))
		{
			cat(" Unconditional simulation if more than one dependent",
				"variable\n")
		}
		else
		{
			if (x$cconditional)
			{
				cat(" Conditional simulation:")
				if (x$condname != '')
				{
					cat('conditioned on', x$condname, '\n')
				}
				else
				{
					if (x$condvarno > 0)
					{
						cat('conditioned on variable number', x$condvarno, '\n')
					}
				}
			}
			else
			{
				cat(" Unconditional simulation\n")
			}
		}
	}
	if (length(x$modelType) >= 1)
	{
		cat(" Model Type:\n")
		if (is.null(names(x$modelType)))
		{
			names(x$modelType) <- 1:length(x$modelType)
		}
		for (i in 1:length(x$modelType))
		{
			cat(sprintf(" %s: %d %s\n", names(x$modelType)[i], (x$modelType)[i],
					ModelTypeStrings(x$modelType[i])))
		}
	}
	if (length(x$behModelType) >= 1)
	{
		cat(" Behavioral Model Type:\n")
		if (is.null(names(x$behModelType)))
		{
			names(x$behModelType) <- 1:length(x$behModelType)
		}
		for (i in 1:length(x$behModelType))
		{
			cat(sprintf(" %s: %s\n",
					names(x$behModelType)[i], BehaviorModelTypeStrings(x$behModelType[i])))
		}
	}
	invisible(x)
}

##@objectOrNull Miscellaneous
objectOrNull <- function(x)
{
	if (is.null(x))
	{
		'NULL'
	}
	else
	{
		x
	}
}

##@averageTheta.last Miscellaneous
averageTheta.last <- function(z, groupOnly=0, nfirst=z$nwarm+1)
{
	ntot <- sum(!is.na(z$ThinPosteriorMu[,1]))
	if (nfirst > ntot)
	{
		stop('Sample did not come beyond warming')
	}
	thetaMean <- rep(NA, z$pp)
	postVarMean <- rep(NA, z$pp)
	for (group in 1:z$nGroup)
	{
		thetaMean[z$ratePositions[[group]]] <- 	colMeans(
				z$ThinParameters[nfirst:ntot,
				group, !z$generalParametersInGroup, drop=FALSE], na.rm=TRUE)
	}
	if (groupOnly != 0)
	{
		thetaMean[(z$set1)&(!z$basicRate)] <- colMeans(
				z$ThinParameters[(nfirst):ntot, groupOnly,
				z$varyingGeneralParametersInGroup, drop=FALSE], na.rm=TRUE)
	}
	else
	{
	thetaMean[(z$set1)&(!z$basicRate)] <- colMeans(
				z$ThinPosteriorMu[(nfirst):ntot,
				z$objectiveInVarying, drop=FALSE], na.rm=TRUE)
	postVarMean[z$varyingObjectiveParameters] <- sapply(1:(dim(z$ThinPosteriorSigma)[2]),
		function(i){mean(z$ThinPosteriorSigma[nfirst:ntot,i,i], na.rm=TRUE)})[z$objectiveInVarying]
	}
	if (any(z$set2))
	{
		thetaMean[z$set2] <-
			colMeans(z$ThinPosteriorEta[nfirst:ntot,, drop=FALSE]
			, na.rm=TRUE)
	}
	list(thetaMean, postVarMean)
}

##@sdTheta.last Miscellaneous
sdTheta.last <- function(z, groupOnly=0, nfirst=z$nwarm+1)
{
	ntot <- sum(!is.na(z$ThinPosteriorMu[,1]))
	if (nfirst >= ntot-1)
	{
		stop('Sample did not come beyond warming')
	}
	sdTheta<- rep(NA, z$pp)
	for (group in 1:z$nGroup)
	{
		sdTheta[z$ratePositions[[group]]] <- apply(
					z$ThinParameters[nfirst:ntot,
					group, !z$generalParametersInGroup, drop=FALSE], 3, sd)
	}
	if (groupOnly != 0)
	{
		sdTheta[(z$set1)&(!z$basicRate)] <- apply(
				z$ThinParameters[nfirst:ntot, groupOnly,
				z$varyingGeneralParametersInGroup, drop=FALSE], 3, sd)
	}
	else
	{
		sdTheta[(z$set1)&(!z$basicRate)] <- apply(
				z$ThinPosteriorMu[nfirst:ntot,
				z$objectiveInVarying, drop=FALSE], 2, sd)
	}
	if (any(z$set2))
	{
		sdTheta[z$set2] <-
			apply(z$ThinPosteriorEta[nfirst:ntot,, drop=FALSE],
			   2, sd)
	}
	sdTheta
}

##@credValues Miscellaneous
credValues <- function(z, theProbs = c(0.025,0.975), tested = 0,
						groupOnly=0, nfirst=z$nwarm+1)
{
	ntot <- sum(!is.na(z$ThinPosteriorMu[,1]))
	if (nfirst >= ntot-1)
	{
		stop('Sample did not come beyond warming')
	}
	credVals <- matrix(NA, length(z$set1), 5)
# But for the rate parameters NAs will remain.
	cvp <- function(x, test0){c(quantile(x, probs=theProbs), 1-(ecdf(x))(test0))}
	if (groupOnly != 0)
	{
		credVals[(z$set1)&(!z$basicRate), 1:3] <- t(apply(
				z$ThinParameters[nfirst:ntot, groupOnly,
				z$varyingGeneralParametersInGroup, drop=FALSE], 3,
						cvp, test0 = tested))
	}
	else
	{
		credVals[(z$set1)&(!z$basicRate), 1:3] <-
			t(apply(z$ThinPosteriorMu[nfirst:ntot,
				z$objectiveInVarying, drop=FALSE], 2, cvp, test0 = tested))
		credVals[z$varyingObjectiveParameters, 4:5] <-
			t(sapply(1:(dim(z$ThinPosteriorSigma)[2]),
	function(i){cvp(z$ThinPosteriorSigma[nfirst:ntot,i,i],10)[1:2]})[,z$objectiveInVarying])
	}
	if (any(z$set2))
	{
		credVals[z$set2,1:3 ] <-
			t(apply(z$ThinPosteriorEta[nfirst:ntot,, drop=FALSE], 2,
					cvp, test0 = tested))
	}
	credVals
}

##@sienaFitThetaTable Miscellaneous
sienaFitThetaTable <- function(x, fromBayes=FALSE, tstat=FALSE, groupOnly=0, nfirst)
{
	if (fromBayes)
	{
	    theEffects <- x$initialResults$requestedEffects
	}
	else
	{
		theEffects <- x$requestedEffects
    theEffects <-theEffects[which(theEffects$type!='gmm'),]
	}
	pp <- dim(theEffects)[1]
    if (x$cconditional)
    {
        nrates <- length(x$rate)
    }
    else
    {
        nrates <- 0
    }
	xp <- pp
    pp <- pp + nrates
    ## mydf stores the data before formatting
	if (fromBayes)
	{
		mydf <- data.frame(dummy=rep(" ", pp),
                       row=rep(0, pp),
                       type=rep("", pp),
                       text=rep(" ", pp),
                       value = rep(0, pp),
                       lParenthesis = rep("(", pp),
                       se = rep(0, pp),
                       rParenthesis = rep(")", pp),
                       tstat=rep(NA, pp),
                       cFrom=rep(NA, pp),
                       cTo=rep(NA, pp),
                       p=rep(NA, pp),
					   random=rep("", pp),
					   postSd=rep("", pp),
					   cSdFrom=rep("", pp),
					   cSdTo=rep("", pp),
                       stringsAsFactors =FALSE)
	}
	else
	{
		mydf <- data.frame(dummy=rep(" ", pp),
                       row=rep(0, pp),
                       type=rep("", pp),
                       text=rep(" ", pp),
                       value = rep(0, pp),
                       lParenthesis = rep("(", pp),
                       se = rep(0, pp),
                       rParenthesis = rep(")", pp),
                       tstat=rep(NA, pp),
                       stringsAsFactors =FALSE)
	}

    ## add to row is the extra lines to put in to table if you wish
    addtorow <- list()
    addtorow$pos <- list()
    addsub <- 1
    if (nrates > 0) ## conditional
    {
        addtorow$command[addsub] <-
            'Rate parameters: '
        addtorow$pos[[addsub]] <- 2
        addsub <- addsub + 1
        if (length(x$rate) == 1)
        {
            mydf[1, 'row'] <- 0
            if (length(attr(x$f,'netnames')) == 1)
            {
                mydf[1, 'text'] <- 'Rate parameter'
            }
            else
            {
                mydf[1, 'text'] <- 'Rate parameter of conditioning variable'
            }
            mydf[1, 'value'] <- x$rate[1]
            mydf[1, 'se'] <- x$vrate[1]
        }
        else ## observations > 2
        {
            nn <- length(x$rate)
            nnstr <- as.numeric(paste('0.', as.character(1:nn), sep=""))
            mydf[1:nn, 'row'] <- nnstr
            mydf[1:nn, 'value'] <- x$rate
            mydf[1:nn, 'se'] <- x$vrate
            if (length(x$f$types) == 1)
            {
                mydf[1:nn, 'text'] <- paste('Rate parameter period', 1:nn)
            }
            else
            {
                mydf[1:nn, 'text'] <-
                    paste('Rate parameter cond. variable period', 1:nn)
            }
            addtorow$command[addsub] <-
                'Other parameters: '
            addtorow$pos[[addsub]] <- nn + 2
            addsub <- addsub + 1
        }
    }
    nBehavs <- sum(x$f$types == "behavior")
    nNetworks <- length(x$f$types) - nBehavs
    if (nBehavs > 0 && nNetworks > 0)
    {
        addtorow$command[addsub] <-
            "Network Dynamics"
        addtorow$pos[[addsub]] <- nrates + 2
        addsub <- addsub + 1
    }
	if (!is.null(x$covtheta))
	{
		ses <- sqrt(diag(x$covtheta))
		ses[x$fixed] <- NA
	}
	if (fromBayes)
	{
		atl <- averageTheta.last(x, groupOnly, nfirst = nfirst)
		theta <- atl[[1]]
		postSd <- sqrt(atl[[2]])
	}
	else
	{
		theta <- x$theta
	}
	if (!is.null(x$covtheta))
	{
		theta[diag(x$covtheta) < 0.0] <- NA
	}

	if (nBehavs > 0)
	{
		behEffects <- theEffects[theEffects$netType == 'behavior',]
		behNames <- unique(behEffects$name)
	}
	if (nBehavs > 1)
	{
		behEffects$effectName <- paste('<',
			(1:nBehavs)[match(behEffects$name,
				behNames)],
			'> ', behEffects$effectName,
			sep='')
		theEffects$effectName[theEffects$netType=='behavior'] <-
			behEffects$effectName
	}
	#browser()
	mydf[nrates + (1:xp), 'row'] <-  1:xp
	mydf[nrates + (1:xp), 'type' ] <- ifelse(theEffects$type == "creation",
		"creat", theEffects$type)
	mydf[nrates + (1:xp), 'text' ] <- theEffects$effectName
	mydf[nrates + (1:xp), 'value' ] <- theta

	if (fromBayes)
	{
		mydf[nrates + (1:xp), 'se' ] <- sdTheta.last(x, groupOnly, nfirst=nfirst)
		mydf[nrates + (1:xp), 'random' ] <- NA
		credVal <- credValues(x, groupOnly = groupOnly, nfirst = nfirst)
		mydf[nrates + (1:xp), 'cFrom' ] <- credVal[,1]
		mydf[nrates + (1:xp), 'cTo' ] <- credVal[,2]
		mydf[nrates + (1:xp), 'p' ] <- credVal[,3]
		mydf[nrates + (1:xp), 'postSd' ] <- postSd
		mydf[nrates + (1:xp), 'cSdFrom' ] <- sqrt(credVal[,4])
		mydf[nrates + (1:xp), 'cSdTo' ] <- sqrt(credVal[,5])
	}
	else
	{
		if (exists("ses"))
		{
			mydf[nrates + (1:xp), 'se' ] <- ses
		}
	}
	if (!is.null(x$tstat))
	{
		mydf[1:nrates, "tstat"] <- NA
		mydf[nrates + (1:xp), 'tstat' ] <- x$tstat
	}

	if (nBehavs > 0 && nNetworks > 0)
	{
		nNetworkEff <- nrow(theEffects) - nrow(behEffects)
		addtorow$command[addsub] <-
			'Behavior Dynamics'
		addtorow$pos[[addsub]] <- nrates + 2 + nNetworkEff
		addsub <- addsub + 1
	}
	return(list(mydf=mydf, addtorow=addtorow))
} # end sienaFitThetaTable

##@sienaFitCovarianceCorrelation Miscellaneous
sienaFitCovarianceCorrelation <- function(x)
{
	covcor <- x
	correl <- x/sqrt(diag(x))[row(x)]/ sqrt(diag(x))[col(x)]
	covcor[lower.tri(covcor)] <- correl[lower.tri(correl)]
	return(covcor)
}

##@xtable fake in case package not loaded
xtable <- function(x, ...)
{
	xtable::xtable(x, ...)
}

##@xtable.sienaFit Methods
xtable.sienaFit <- function(x, caption = NULL, label = NULL, align = NULL,
                            digits = NULL, display = NULL, ...)
{
    tmp <- sienaFitThetaTable(x)
    mydf <- tmp$mydf
    addtorow <- tmp$addtorow
    ## find out whether the type is html or latex
    dots <- substitute(list(...))[-1] ##first entry is the word 'list'
    if (!is.null(dots[["type"]]))
    {
        type <- dots[["type"]]
    }
    else
    {
        type <- "latex"
    }
    if (!is.null(addtorow$command))
    {
        if (type =="latex")
        {
            use <- addtorow$command != 'Network Dynamics'
            addtorow$command <- paste('\\multicolumn{4}{l}{', addtorow$command,
                                      '} \\\\ \n')
            use[1] <- FALSE
            addtorow$command[use] <- paste('\\\\ ', addtorow$command[use])
        }
        else ##html
        {
			## use <- addtorow$command != 'Network Dynamics'
            addtorow$command <- paste("<TR> <TD colspan=9 align=left>",
                                      addtorow$command,
                                      "</TD> </TR> <TR> </TR> \n")
			##  use[1] <- FALSE
			##  addtorow$command[use] <- paste('\\\\ ', addtorow$command[use])
        }
    }
    else
    {
        addtorow <- NULL
    }
    mydf[mydf$row < 1, 'row'] <-
        format(mydf[mydf$row < 1, 'row'])
    mydf[mydf[,'row'] >= 1, 'row'] <- paste(format(mydf[mydf$row >= 1,
             'row']), '.', sep='')
    tmp <- list(xtable::xtable(mydf, caption=caption, label=label, align=align,
							   digits=digits, display=display),
				add.to.row=addtorow,
                include.colnames=FALSE, include.rownames=FALSE, ...)
    class(tmp) <- c("xtable.sienaFit", "xtable")
    tmp
}
##@print.xtable.sienaFit Methods
print.xtable.sienaFit <- function(x, ...)
{
    addtorow <- x[["add.to.row"]]
    if (!is.null(addtorow))
    {
        x$add.to.row$pos <- lapply(x$add.to.row$pos, function(x)x-2)
        do.call("print", x)
    }
    else
    {
        do.call("print", x[-2])
    }
    invisible(x)
}

##@print.chains.data.frame Methods
print.chains.data.frame <- function(x, ...)
{
    NextMethod(x)
	initState <- attr(x, "initialStateDifferences")
	endState <- attr(x, "endStateDifferences")
	if (nrow(initState) > 0)
	{
		cat("\n Initial State Differences:\n")
		print(initState)
	}
	if (nrow(endState) > 0)
	{
		cat("\n End State Differences:\n")
		print(endState)
	}
}

##@maketemp Methods
makeTemp <- function(x, groupOnly=0, nfirst, ...)
{
# This reproduces a part of sienaFit but with Bayesian headings;
# for use in print.sienaBayesFit and summary.sienaBayesFit
	
  
  
    name1 <- x$requestedEffects$groupName[1]
		x$requestedEffects <-
			x$requestedEffects[x$requestedEffects$groupName==name1,]
		x$pp <- length(x$theta)
		x$fixed <- x$fixed[x$requestedEffects$groupName==name1]
		if (is.null(nfirst))
		{
			nfirst <- x$nwarm + 1
		}
		tmp <- sienaFitThetaTable(x, fromBayes=TRUE, groupOnly=groupOnly, nfirst=nfirst)
		mydf <- tmp$mydf
		
		#for some reason if the values are round, formatted and assigned at the same time, the code	
		# mydf$postSd <- round(as.numeric(mydf$postSd), 4)
		# mydf$cSdFrom <- format(round(mydf$cSdFrom, 4))
		# mydf$cSdTo <- format(round(mydf$cSdTo, 4))
		
		
		mymat <- as.matrix(mydf[,names(mydf)!="tstat"])
#		mynames <- colnames(mymat)
#		mymat <- cbind(mymat, rep.int(NA, dim(mymat)[1]))
#		mymat <- cbind(mymat, matrix(NA, dim(mymat)[1], 4))
#		colnames(mymat) <- c(mynames, 'random', 'credFrom','credTo', 'p')
		mymat[, 'value'] <- format(round(mydf$value, digits=4))
		mymat[, 'se'] <- format(round(mydf$se, digits=4))
		mymat[x$set1, 'random']      <- "   +   "
		mymat[x$set2, 'random']      <- "   -   "
		mymat[x$basicRate, 'random'] <- "       "
		mymat[, 'cFrom'] <- format(round(mydf$cFrom, digits=4))
		mymat[x$basicRate, 'cFrom'] <- "       "
		mymat[, 'cTo'] <- format(round(mydf$cTo, digits=4))
		mymat[x$basicRate, 'cTo'] <- "       "
		mymat[, 'p'] <- format(round(mydf$p, digits=2))
		mymat[x$basicRate, 'p'] <- "       "
		mymat[, 'postSd'] <- format(round(as.numeric(mydf$postSd), digits=4))
		#mymat[, 'postSd'] <- format(mydf$postSd)
		mymat[, 'cSdFrom'] <- format(round(as.numeric(mydf$cSdFrom), digits=4))
		#mymat[, 'cSdFrom'] <- format(mydf$cSdFrom)
		mymat[, 'cSdTo'] <- format(round(as.numeric(mydf$cSdTo), digits=4))
		#mymat[, 'cSdTo'] <- format(mydf$cSdTo, digits=4)
		mymat[, 'type'] <- format(mymat[, 'type'])
		mymat[, 'text'] <- format(mymat[, 'text'])
		mymat[mydf$row < 1, 'row'] <-
			format(mydf[mydf$row < 1, 'row'])
		mymat[mydf[,'row'] >= 1, 'row'] <-
			paste(format(mydf[mydf$row >= 1, 'row']), '.', sep='')
		mymat <- rbind(c(rep("", 4), "Post.   ", "", "Post.   ", "",
				" cred.  ", " cred. ", " p", "varying ", "Post.   ", "cred.  ", "cred.  "),
			c(rep("", 4), "mean    ", "", "s.d.m.", "",
				" from   ", " to    ", "", "", "s.d.   ","from   ", "to    "),
			mymat)
		mymat <- apply(mymat, 2, format)
		tmp1 <- apply(mymat, 1, function(x) paste(x, collapse=" "))
		list(tmp, tmp1)
}

##@print.sienaBayesFit Methods
print.sienaBayesFit <- function(x, nfirst=NULL, ...)
{
	printmat <- function(mat)
	{
		cat(sprintf("%8.4f",mat), sep=c(rep.int(' ', ncol(mat) - 1), '\n'))
	}
	if (!inherits(x, "sienaBayesFit"))
	{
        stop("not a legitimate Siena Bayes model fit")
	}
	else
	{
		cat("Note: this summary does not contain a convergence check.\n\n")
		if (length(x$f$groupNames) > 1)
		{
			cat("Groups:\n")
			s <- ""
			ml <- max(nchar(x$f$groupNames))
			fmt <- paste("%-", ml+2, "s", sep="")
			for (i in 1:dim(x$ThinParameters)[2])
			{
				s <- paste(s, gettextf(fmt,x$f$groupNames[i]))
				if ((nchar(s) + ml > 80) | (i == dim(x$ThinParameters)[2]))
				{
					cat(paste(s,"\n"))
					s <- ""
				}
			}
			cat("\n")
		}

		cat("Posterior means and standard deviations ")
		# Make temporary changes to make x look like a sienaFit object
		# so that sienaFitThetaTable can be applied.
		# This is done in function makeTemp.
		if (length(x$f$groupNames) <= 1)
		{
			cat("\n\n")
# For this case, makeTemp still must be adapted.
#			x$theta <- colMeans(x$ThinParameters[,1,])
#			x$covtheta <- cov(x$ThinParameters[,1,])
		}
		else
		{
			cat("for global mean parameters\n\n")
			ntot <- sum(!is.na(x$ThinPosteriorMu[,1]))
			if (is.null(nfirst))
			{
				if (x$frequentist)
				{
					first <- x$nwarm + x$nmain - x$lengthPhase3 + 1
				}
				else
				{
					first <- x$nwarm + 1
				}
			}
			else
			{
				first <- nfirst
			}
			if (first > ntot)
			{
				stop("Not enough data: nfirst too large.")
			}
			cat("Total number of runs in the results is ",ntot, ".\n")
			if (ntot < x$nwarm + x$nmain)
			{
				cat("This object resulted from an intermediate save, after",
					ntot, "MCMC runs.\n\n")
			}
			if (ntot > first+2)
			{
				cat("Posterior means and standard deviations are averages over",
					ntot - first + 1, "MCMC runs (counted after thinning).\n\n")
#				x$theta <- c(colMeans(x$ThinPosteriorMu[first:ntot,]),
#						colMeans(x$ThinPosteriorEta[first:ntot,, drop=FALSE]))
#				x$covtheta <- cov(cbind(x$ThinPosteriorMu[first:ntot,],
#									x$ThinPosteriorEta[first:ntot,]))
			}
			else
			{
				stop("This object did not come beyond the warming phase.\n")
			}
		}
		tmps <- makeTemp(x, nfirst=nfirst)
		tmp <- tmps[[1]]
		tmp1 <- tmps[[2]]
		addtorow <- tmp$addtorow
		for (i in 1:length(tmp1))
		{
			if (length(addtorow$command) > 0)
			{
				for (j in 1:length(addtorow$command))
				{
					ii <- match(i-1, addtorow$pos[[j]])
					if (!is.na(ii))
						if (i == 2 | addtorow$command[j] == 'Network Dynamics')
							cat( addtorow$command[j], '\n')
						else
							cat('\n', addtorow$command[j], '\n', sep='')
				}
			}
			cat(tmp1[i], '\n')
		}
		if (length(x$f$groupNames) > 1)
		{
			cat("\n")
			if (x$frequentist)
			{
				mean.Sigma <- x$Sigma
				cat("Estimated covariance matrix (varying parameters)\n")
			}
			else
			{
				mean.Sigma <-
					apply(x$ThinPosteriorSigma[first:ntot,,], c(2,3), mean)
				sd.Sigma <-
					apply(x$ThinPosteriorSigma[first:ntot,,], c(2,3), sd)
		cat("Posterior mean of global covariance matrix (varying parameters)\n")
			}
			printmat(mean.Sigma)
			if (!x$frequentist)
			{
				cat("\nPosterior standard deviations of ")
				cat("elements of global covariance matrix\n")
				printmat(sd.Sigma)
			}
		}
#		cat("\nTotal of", ntot-nfirst+1, "samples.\n\n")
		cat("\n")
	}
	invisible(x)
}

##@summary.sienaBayesFit Methods
summary.sienaBayesFit <- function(object, nfirst=NULL, ...)
{
    if (!inherits(object, "sienaBayesFit"))
	{
        stop("not a legitimate Siena Bayes model fit")
	}
    class(object) <- c("summary.sienaBayesFit", class(object))
	print.summary.sienaBayesFit(object, nfirst)
    invisible(object)
}
##@print.summary.sienaBayesFit Methods
print.summary.sienaBayesFit <- function(x, nfirst=NULL, ...)
{
	if (!inherits(x, "summary.sienaBayesFit"))
	{
        stop("not a legitimate summary of a Siena Bayes model fit")
	}
	ntot <- sum(!is.na(x$ThinPosteriorMu[,1]))
	if (is.null(nfirst))
	{
		if (x$frequentist)
		{
			first <- x$nwarm + x$nmain - x$lengthPhase3 + 1
		}
		else
		{
			first <- x$nwarm + 1
		}
	}
	else
	{
		first <- nfirst
	}
	if (first > ntot)
	{
		stop("Not enough data: nfirst too large.")
	}
	if (x$frequentist)
	{
		cat("Frequentist estimation.\n")
	}
	else
	{
		cat("Bayesian estimation.\n")
		cat("Prior distribution:\n")
		cat("\nMu      ")
		for (i in seq(along=x$priorMu))
		{
			cat(x$effectName[x$varyingParametersInGroup][i],
					sprintf("%8.4f", x$priorMu[i,1]),"\n        ")
		}
		cat("\nSigma   ")
		for (i in seq(along=x$priorMu))
		{
			cat(sprintf("%8.4f", x$priorSigma[i,]),"\n        ")
		}
		cat("\nDf       ",sprintf("%1d", x$priorDf),"\n")
		if (length(x$f$groupNames) >= 2)
		{
			cat("\nKappa  ",sprintf("%8.4f", x$priorKappa),"\n")
		}
#		cat("\nFor the basic rate parameters, ")
#		cat("the prior is on the square root scale.\n\n")
	}
	if (x$incidentalBasicRates)
	{
		cat("\nBasic rates parameters are treated as incidental parameters.\n\n")
	}
	cat("\nAlgorithm specifications were nwarm =",x$nwarm,", nmain =", x$nmain,
	    ", nrunMHBatches =", x$nrunMHBatches,
	    ", nImproveMH =", x$nImproveMH,
		",\n nSampVarying =", x$nSampVarying, ", nSampConst =", x$nSampConst,
		", mult =", x$mult, ".\n")
	if (!is.null(nfirst))
	{
		cat("For the results, nwarm is superseded by nfirst = ", nfirst, ".")
	}
	if (ntot < x$nwarm + x$nmain)
	{
		cat("This object resulted from an intermediate save, after",
			ntot, " MCMC runs.")
	}
	if (x$frequentist)
	{
		cat("Lengths of phases were:\n")
		cat("Phase 1:", x$lengthPhase1, ", phase 2:",
			x$nmain - x$lengthPhase3 - x$lengthPhase1,
			", phase 3:", x$lengthPhase1, ".\n")
		cat("Posterior means and standard deviations are")
		cat(" averages over phase 3.\n\n")
	}
	else
	{
		cat("Posterior means and standard deviations are averages over")
		cat(" the last", ntot - first + 1, "runs.\n\n")
	}
	if (ntot > first+2)
	{
		cat("Proportion of acceptances in MCMC proposals after warming up:\n")
		cat(sprintf("%4.2f",
			colMeans(x$ThinBayesAcceptances[first:ntot,])/x$nrunMHBatches),
			fill=TRUE,"\n")
		cat("This should ideally be close to 0.25.\n")
	}
	print.sienaBayesFit(x, nfirst)
	if (ntot > first+2)
	{
		cat("Posterior means and standard deviations of varying parameters per group\n")
		for (h in 1:length(x$f$groupNames))
		{
			cat("\n", x$f$groupNames[h], "\n")
			tmps <- makeTemp(x, groupOnly=h, nfirst=nfirst)
			tmp <- tmps[[1]]
			tmp1 <- tmps[[2]]
			addtorow <- tmp$addtorow
			# first two lines are the header
			lines.thisgroup <-
			   union(c(1,2), 2 + x$ratePositions[[h]])
			lines.thisgroup <- union(lines.thisgroup,
							2 + which(x$varyingObjectiveParameters))
			lines.thisgroup <- sort(union(lines.thisgroup, 2 + which(x$set2)))
			for (i in lines.thisgroup)
			{
				if (length(addtorow$command) > 0)
				{
					for (j in 1:length(addtorow$command))
					{
						ii <- match(i-1, addtorow$pos[[j]])
						if (!is.na(ii))
							if (i == 2 | addtorow$command[j] == 'Network Dynamics')
								cat( addtorow$command[j], '\n')
							else
								cat('\n', addtorow$command[j], '\n', sep='')
					}
				}
				cat(tmp1[i], '\n')
			}
		}
	}
	invisible(x)
}

