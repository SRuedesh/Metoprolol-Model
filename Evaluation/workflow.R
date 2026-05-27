createQualificationReport <- function(qualificationRunnerFolder,
                                      pkSimPortableFolder = NULL,
                                      createWordReport = FALSE,
                                      maxSimulationsPerCore = NULL) {
  if (!requireNamespace("ospsuite.reportingengine", quietly = TRUE)) {
    stop("Package ospsuite.reportingengine is required.", call. = FALSE)
  }
  library(ospsuite.reportingengine)

  findRepoRoot <- function(path) {
    current <- normalizePath(path, winslash = "/", mustWork = TRUE)
    repeat {
      if (file.exists(file.path(current, "Metoprolol-Model.json")) &&
          dir.exists(file.path(current, "Evaluation"))) {
        return(current)
      }
      parent <- dirname(current)
      if (identical(parent, current)) {
        stop("Could not find repository root containing Metoprolol-Model.json and Evaluation", call. = FALSE)
      }
      current <- parent
    }
  }

  thisFile <- if (sys.nframe() > 0) tryCatch(normalizePath(sys.frame(1)$ofile, winslash = "/", mustWork = TRUE), error = function(e) NA_character_) else NA_character_
  repoRoot <- findRepoRoot(if (!is.na(thisFile)) dirname(thisFile) else getwd())
  workingDirectory <- file.path(repoRoot, "Evaluation")
  qualificationPlanFile <- file.path(workingDirectory, "Input", "evaluation_plan.json")
  snapshotFile <- file.path(repoRoot, "Metoprolol-Model.json")

  if (!file.exists(qualificationPlanFile)) stop("Missing evaluation plan: ", qualificationPlanFile, call. = FALSE)
  if (!file.exists(snapshotFile)) stop("Missing model snapshot: ", snapshotFile, call. = FALSE)
  if (!dir.exists(qualificationRunnerFolder)) stop("Missing QualificationRunner folder: ", qualificationRunnerFolder, call. = FALSE)
  if (!is.null(pkSimPortableFolder) && !dir.exists(pkSimPortableFolder)) stop("Missing PK-Sim folder: ", pkSimPortableFolder, call. = FALSE)

  reInputFolder <- file.path(workingDirectory, "re_input")
  reOutputFolder <- file.path(workingDirectory, "re_output")
  configurationPlanName <- "report-configuration-plan"
  configurationPlanFile <- file.path(reInputFolder, paste0(configurationPlanName, ".json"))
  logFile <- file.path(workingDirectory, "runner.log")

  startQualificationRunner(
    qualificationRunnerFolder = qualificationRunnerFolder,
    qualificationPlanFile = qualificationPlanFile,
    outputFolder = reInputFolder,
    pkSimPortableFolder = pkSimPortableFolder,
    configurationPlanName = configurationPlanName,
    overwrite = TRUE,
    logFile = logFile,
    logLevel = "Debug"
  )

  if (!file.exists(configurationPlanFile)) stop("QualificationRunner did not create: ", configurationPlanFile, call. = FALSE)

  workflow <- loadQualificationWorkflow(
    workflowFolder = reOutputFolder,
    configurationPlanFile = configurationPlanFile
  )
  workflow$reportFilePath <- file.path(workingDirectory, "report", "report.md")
  workflow$createWordReport <- createWordReport
  if (!is.null(maxSimulationsPerCore)) {
    if (!is.numeric(maxSimulationsPerCore) ||
        length(maxSimulationsPerCore) != 1 ||
        is.na(maxSimulationsPerCore) ||
        maxSimulationsPerCore < 1) {
      stop("maxSimulationsPerCore must be a single numeric value >= 1.", call. = FALSE)
    }
    workflow$simulate$settings$maxSimulationsPerCore <- as.integer(maxSimulationsPerCore)
  }
  workflow$runWorkflow()
  invisible(workflow)
}
