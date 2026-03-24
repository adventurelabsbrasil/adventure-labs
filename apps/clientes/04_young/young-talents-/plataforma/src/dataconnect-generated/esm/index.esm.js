import { queryRef, executeQuery, mutationRef, executeMutation, validateArgs } from 'firebase/data-connect';

export const connectorConfig = {
  connector: 'example',
  service: 'young-hunt-ats',
  location: 'us-east4'
};

export const createJobSeekerProfileRef = (dcOrVars, vars) => {
  const { dc: dcInstance, vars: inputVars} = validateArgs(connectorConfig, dcOrVars, vars, true);
  dcInstance._useGeneratedSdk();
  return mutationRef(dcInstance, 'CreateJobSeekerProfile', inputVars);
}
createJobSeekerProfileRef.operationName = 'CreateJobSeekerProfile';

export function createJobSeekerProfile(dcOrVars, vars) {
  return executeMutation(createJobSeekerProfileRef(dcOrVars, vars));
}

export const getJobPostingsRef = (dc) => {
  const { dc: dcInstance} = validateArgs(connectorConfig, dc, undefined);
  dcInstance._useGeneratedSdk();
  return queryRef(dcInstance, 'GetJobPostings');
}
getJobPostingsRef.operationName = 'GetJobPostings';

export function getJobPostings(dc) {
  return executeQuery(getJobPostingsRef(dc));
}

export const applyToJobRef = (dcOrVars, vars) => {
  const { dc: dcInstance, vars: inputVars} = validateArgs(connectorConfig, dcOrVars, vars, true);
  dcInstance._useGeneratedSdk();
  return mutationRef(dcInstance, 'ApplyToJob', inputVars);
}
applyToJobRef.operationName = 'ApplyToJob';

export function applyToJob(dcOrVars, vars) {
  return executeMutation(applyToJobRef(dcOrVars, vars));
}

export const getMyApplicationsRef = (dc) => {
  const { dc: dcInstance} = validateArgs(connectorConfig, dc, undefined);
  dcInstance._useGeneratedSdk();
  return queryRef(dcInstance, 'GetMyApplications');
}
getMyApplicationsRef.operationName = 'GetMyApplications';

export function getMyApplications(dc) {
  return executeQuery(getMyApplicationsRef(dc));
}

