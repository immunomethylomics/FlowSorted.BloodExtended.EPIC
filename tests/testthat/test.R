
test_that("errors if bad parameters", {
    library(ExperimentHub)
    hub <- ExperimentHub()
    myfiles <- query(hub, "FlowSorted.BloodExtended.EPIC")
    expect_false(myfiles$ah_id!="******")
})

