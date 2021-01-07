
test_that("errors if bad parameters", {
    library(ExperimentHub)
    hub <- ExperimentHub()
    myfiles <- query(hub, "FlowSorted.CordBloodCombined.450k")
    expect_false(myfiles$ah_id!="EH2256")
})

