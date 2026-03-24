import { CreateJobSeekerProfileData, CreateJobSeekerProfileVariables, GetJobPostingsData, ApplyToJobData, ApplyToJobVariables, GetMyApplicationsData } from '../';
import { UseDataConnectQueryResult, useDataConnectQueryOptions, UseDataConnectMutationResult, useDataConnectMutationOptions} from '@tanstack-query-firebase/react/data-connect';
import { UseQueryResult, UseMutationResult} from '@tanstack/react-query';
import { DataConnect } from 'firebase/data-connect';
import { FirebaseError } from 'firebase/app';


export function useCreateJobSeekerProfile(options?: useDataConnectMutationOptions<CreateJobSeekerProfileData, FirebaseError, CreateJobSeekerProfileVariables>): UseDataConnectMutationResult<CreateJobSeekerProfileData, CreateJobSeekerProfileVariables>;
export function useCreateJobSeekerProfile(dc: DataConnect, options?: useDataConnectMutationOptions<CreateJobSeekerProfileData, FirebaseError, CreateJobSeekerProfileVariables>): UseDataConnectMutationResult<CreateJobSeekerProfileData, CreateJobSeekerProfileVariables>;

export function useGetJobPostings(options?: useDataConnectQueryOptions<GetJobPostingsData>): UseDataConnectQueryResult<GetJobPostingsData, undefined>;
export function useGetJobPostings(dc: DataConnect, options?: useDataConnectQueryOptions<GetJobPostingsData>): UseDataConnectQueryResult<GetJobPostingsData, undefined>;

export function useApplyToJob(options?: useDataConnectMutationOptions<ApplyToJobData, FirebaseError, ApplyToJobVariables>): UseDataConnectMutationResult<ApplyToJobData, ApplyToJobVariables>;
export function useApplyToJob(dc: DataConnect, options?: useDataConnectMutationOptions<ApplyToJobData, FirebaseError, ApplyToJobVariables>): UseDataConnectMutationResult<ApplyToJobData, ApplyToJobVariables>;

export function useGetMyApplications(options?: useDataConnectQueryOptions<GetMyApplicationsData>): UseDataConnectQueryResult<GetMyApplicationsData, undefined>;
export function useGetMyApplications(dc: DataConnect, options?: useDataConnectQueryOptions<GetMyApplicationsData>): UseDataConnectQueryResult<GetMyApplicationsData, undefined>;
