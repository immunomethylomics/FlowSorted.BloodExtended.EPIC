.onLoad <- function(libname = find.package("FlowSorted.BloodExtended.EPIC"),
                    pkgname = "FlowSorted.BloodExtended.EPIC"){

    # CRAN Note avoidance
    if(getRversion() >= "3.4.0")
        utils::globalVariables(c("RGsetTargets"))
    invisible()
    #fl <- system.file("extdata", "metadata.csv", package=pkgname)
    #titles <- read.csv(fl, stringsAsFactors=FALSE)$Title
    #createHubAccessors(pkgname, titles)

}
#.onUnload <- function (libpath) {
#    library.dynam.unload("FlowSorted.Blood.EPIC", libpath)
#}
