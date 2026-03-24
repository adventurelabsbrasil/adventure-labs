const { queryRef, executeQuery, mutationRef, executeMutation, validateArgs } = require('firebase/data-connect');

const connectorConfig = {
  connector: 'example',
  service: 'young-hunt-ats',
  location: 'us-east4'
};
exports.connectorConfig = connectorConfig;

const createJobSeekerProfileRef = (dcOrVars, vars) => {
  const { dc: dcInstance, vars: inputVars} = validateArgs(connectorConfig, dcOrVars, vars, true);
  dcInstance._useGeneratedSdk();
  return mutationRef(dcInstance, 'CreateJobSeekerProfile', inputVars);
}
createJobSeekerProfileRef.operationName = 'CreateJobSeekerProfile';
exports.createJobSeekerProfileRef = createJobSeekerProfileRef;

exports.createJobSeekerProfile = function createJobSeekerProfile(dcOrVars, vars) {
  return executeMutation(createJobSeekerProfileRef(dcOrVars, vars));
};

const getJobPostingsRef = (dc) => {
  const { dc: dcInstance} = validateArgs(connectorConfig, dc, undefined);
  dcInstance._useGeneratedSdk();
  return queryRef(dcInstance, 'GetJobPostings');
}
getJobPostingsRef.operationName = 'GetJobPostings';
exports.getJobPostingsRef = getJobPostingsRef;

exports.getJobPostings = function getJobPostings(dc) {
  return executeQuery(getJobPostingsRef(dc));
};

const applyToJobRef = (dcOrVars, vars) => {
  const { dc: dcInstance, vars: inputVars} = validateArgs(connectorConfig, dcOrVars, vars, true);
  dcInstance._useGeneratedSdk();
  return mutationRef(dcInstance, 'ApplyToJob', inputVars);
}
applyToJobRef.operationName = 'ApplyToJob';
exports.applyToJobRef = applyToJobRef;

exports.applyToJob = function applyToJob(dcOrVars, vars) {
  return executeMutation(applyToJobRef(dcOrVars, vars));
};

const getMyApplicationsRef = (dc) => {
  const { dc: dcInstance} = validateArgs(connectorConfig, dc, undefined);
  dcInstance._useGeneratedSdk();
  return queryRef(dcInstance, 'GetMyApplications');
}
getMyApplicationsRef.operationName = 'GetMyApplications';
exports.getMyApplicationsRef = getMyApplicationsRef;

exports.getMyApplications = function getMyApplications(dc) {
  return executeQuery(getMyApplicationsRef(dc));
};
