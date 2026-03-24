import { ConnectorConfig, DataConnect, OperationOptions, ExecuteOperationResponse } from 'firebase-admin/data-connect';

export const connectorConfig: ConnectorConfig;

export type TimestampString = string;
export type UUIDString = string;
export type Int64String = string;
export type DateString = string;


export interface Application_Key {
  id: UUIDString;
  __typename?: 'Application_Key';
}

export interface ApplyToJobData {
  application_insert: Application_Key;
}

export interface ApplyToJobVariables {
  jobPostingId: UUIDString;
  jobSeekerProfileId: UUIDString;
  coverLetter?: string | null;
  resumeUrl?: string | null;
}

export interface CreateJobSeekerProfileData {
  jobSeekerProfile_insert: JobSeekerProfile_Key;
}

export interface CreateJobSeekerProfileVariables {
  userId: UUIDString;
  contactEmail: string;
  firstName: string;
  headline: string;
  lastName: string;
}

export interface EmployerProfile_Key {
  id: UUIDString;
  __typename?: 'EmployerProfile_Key';
}

export interface GetJobPostingsData {
  jobPostings: ({
    id: UUIDString;
    title: string;
    description: string;
    location: string;
  } & JobPosting_Key)[];
}

export interface GetMyApplicationsData {
  applications: ({
    id: UUIDString;
    jobPosting: {
      title: string;
      description: string;
      location: string;
    };
      appliedAt: TimestampString;
      status: string;
  } & Application_Key)[];
}

export interface JobPosting_Key {
  id: UUIDString;
  __typename?: 'JobPosting_Key';
}

export interface JobSeekerProfile_Key {
  id: UUIDString;
  __typename?: 'JobSeekerProfile_Key';
}

export interface User_Key {
  id: UUIDString;
  __typename?: 'User_Key';
}

/** Generated Node Admin SDK operation action function for the 'CreateJobSeekerProfile' Mutation. Allow users to execute without passing in DataConnect. */
export function createJobSeekerProfile(dc: DataConnect, vars: CreateJobSeekerProfileVariables, options?: OperationOptions): Promise<ExecuteOperationResponse<CreateJobSeekerProfileData>>;
/** Generated Node Admin SDK operation action function for the 'CreateJobSeekerProfile' Mutation. Allow users to pass in custom DataConnect instances. */
export function createJobSeekerProfile(vars: CreateJobSeekerProfileVariables, options?: OperationOptions): Promise<ExecuteOperationResponse<CreateJobSeekerProfileData>>;

/** Generated Node Admin SDK operation action function for the 'GetJobPostings' Query. Allow users to execute without passing in DataConnect. */
export function getJobPostings(dc: DataConnect, options?: OperationOptions): Promise<ExecuteOperationResponse<GetJobPostingsData>>;
/** Generated Node Admin SDK operation action function for the 'GetJobPostings' Query. Allow users to pass in custom DataConnect instances. */
export function getJobPostings(options?: OperationOptions): Promise<ExecuteOperationResponse<GetJobPostingsData>>;

/** Generated Node Admin SDK operation action function for the 'ApplyToJob' Mutation. Allow users to execute without passing in DataConnect. */
export function applyToJob(dc: DataConnect, vars: ApplyToJobVariables, options?: OperationOptions): Promise<ExecuteOperationResponse<ApplyToJobData>>;
/** Generated Node Admin SDK operation action function for the 'ApplyToJob' Mutation. Allow users to pass in custom DataConnect instances. */
export function applyToJob(vars: ApplyToJobVariables, options?: OperationOptions): Promise<ExecuteOperationResponse<ApplyToJobData>>;

/** Generated Node Admin SDK operation action function for the 'GetMyApplications' Query. Allow users to execute without passing in DataConnect. */
export function getMyApplications(dc: DataConnect, options?: OperationOptions): Promise<ExecuteOperationResponse<GetMyApplicationsData>>;
/** Generated Node Admin SDK operation action function for the 'GetMyApplications' Query. Allow users to pass in custom DataConnect instances. */
export function getMyApplications(options?: OperationOptions): Promise<ExecuteOperationResponse<GetMyApplicationsData>>;

