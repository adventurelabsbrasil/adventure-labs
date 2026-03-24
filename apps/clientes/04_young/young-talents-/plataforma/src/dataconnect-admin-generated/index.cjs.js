const { validateAdminArgs } = require('firebase-admin/data-connect');

const connectorConfig = {
  connector: 'example',
  serviceId: 'young-hunt-ats',
  location: 'us-east4'
};
exports.connectorConfig = connectorConfig;

function createJobSeekerProfile(dcOrVarsOrOptions, varsOrOptions, options) {
  const { dc: dcInstance, vars: inputVars, options: inputOpts} = validateAdminArgs(connectorConfig, dcOrVarsOrOptions, varsOrOptions, options, true, true);
  dcInstance.useGen(true);
  return dcInstance.executeMutation('CreateJobSeekerProfile', inputVars, inputOpts);
}
exports.createJobSeekerProfile = createJobSeekerProfile;

function getJobPostings(dcOrOptions, options) {
  const { dc: dcInstance, options: inputOpts} = validateAdminArgs(connectorConfig, dcOrOptions, options, undefined);
  dcInstance.useGen(true);
  return dcInstance.executeQuery('GetJobPostings', undefined, inputOpts);
}
exports.getJobPostings = getJobPostings;

function applyToJob(dcOrVarsOrOptions, varsOrOptions, options) {
  const { dc: dcInstance, vars: inputVars, options: inputOpts} = validateAdminArgs(connectorConfig, dcOrVarsOrOptions, varsOrOptions, options, true, true);
  dcInstance.useGen(true);
  return dcInstance.executeMutation('ApplyToJob', inputVars, inputOpts);
}
exports.applyToJob = applyToJob;

function getMyApplications(dcOrOptions, options) {
  const { dc: dcInstance, options: inputOpts} = validateAdminArgs(connectorConfig, dcOrOptions, options, undefined);
  dcInstance.useGen(true);
  return dcInstance.executeQuery('GetMyApplications', undefined, inputOpts);
}
exports.getMyApplications = getMyApplications;

