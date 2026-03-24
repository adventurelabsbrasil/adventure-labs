import { ConnectorConfig, DataConnect, QueryRef, QueryPromise, MutationRef, MutationPromise } from 'firebase/data-connect';

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

interface CreateJobSeekerProfileRef {
  /* Allow users to create refs without passing in DataConnect */
  (vars: CreateJobSeekerProfileVariables): MutationRef<CreateJobSeekerProfileData, CreateJobSeekerProfileVariables>;
  /* Allow users to pass in custom DataConnect instances */
  (dc: DataConnect, vars: CreateJobSeekerProfileVariables): MutationRef<CreateJobSeekerProfileData, CreateJobSeekerProfileVariables>;
  operationName: string;
}
export const createJobSeekerProfileRef: CreateJobSeekerProfileRef;

export function createJobSeekerProfile(vars: CreateJobSeekerProfileVariables): MutationPromise<CreateJobSeekerProfileData, CreateJobSeekerProfileVariables>;
export function createJobSeekerProfile(dc: DataConnect, vars: CreateJobSeekerProfileVariables): MutationPromise<CreateJobSeekerProfileData, CreateJobSeekerProfileVariables>;

interface GetJobPostingsRef {
  /* Allow users to create refs without passing in DataConnect */
  (): QueryRef<GetJobPostingsData, undefined>;
  /* Allow users to pass in custom DataConnect instances */
  (dc: DataConnect): QueryRef<GetJobPostingsData, undefined>;
  operationName: string;
}
export const getJobPostingsRef: GetJobPostingsRef;

export function getJobPostings(): QueryPromise<GetJobPostingsData, undefined>;
export function getJobPostings(dc: DataConnect): QueryPromise<GetJobPostingsData, undefined>;

interface ApplyToJobRef {
  /* Allow users to create refs without passing in DataConnect */
  (vars: ApplyToJobVariables): MutationRef<ApplyToJobData, ApplyToJobVariables>;
  /* Allow users to pass in custom DataConnect instances */
  (dc: DataConnect, vars: ApplyToJobVariables): MutationRef<ApplyToJobData, ApplyToJobVariables>;
  operationName: string;
}
export const applyToJobRef: ApplyToJobRef;

export function applyToJob(vars: ApplyToJobVariables): MutationPromise<ApplyToJobData, ApplyToJobVariables>;
export function applyToJob(dc: DataConnect, vars: ApplyToJobVariables): MutationPromise<ApplyToJobData, ApplyToJobVariables>;

interface GetMyApplicationsRef {
  /* Allow users to create refs without passing in DataConnect */
  (): QueryRef<GetMyApplicationsData, undefined>;
  /* Allow users to pass in custom DataConnect instances */
  (dc: DataConnect): QueryRef<GetMyApplicationsData, undefined>;
  operationName: string;
}
export const getMyApplicationsRef: GetMyApplicationsRef;

export function getMyApplications(): QueryPromise<GetMyApplicationsData, undefined>;
export function getMyApplications(dc: DataConnect): QueryPromise<GetMyApplicationsData, undefined>;

