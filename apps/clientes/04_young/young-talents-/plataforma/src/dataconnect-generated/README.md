# Generated TypeScript README
This README will guide you through the process of using the generated JavaScript SDK package for the connector `example`. It will also provide examples on how to use your generated SDK to call your Data Connect queries and mutations.

**If you're looking for the `React README`, you can find it at [`dataconnect-generated/react/README.md`](./react/README.md)**

***NOTE:** This README is generated alongside the generated SDK. If you make changes to this file, they will be overwritten when the SDK is regenerated.*

# Table of Contents
- [**Overview**](#generated-javascript-readme)
- [**Accessing the connector**](#accessing-the-connector)
  - [*Connecting to the local Emulator*](#connecting-to-the-local-emulator)
- [**Queries**](#queries)
  - [*GetJobPostings*](#getjobpostings)
  - [*GetMyApplications*](#getmyapplications)
- [**Mutations**](#mutations)
  - [*CreateJobSeekerProfile*](#createjobseekerprofile)
  - [*ApplyToJob*](#applytojob)

# Accessing the connector
A connector is a collection of Queries and Mutations. One SDK is generated for each connector - this SDK is generated for the connector `example`. You can find more information about connectors in the [Data Connect documentation](https://firebase.google.com/docs/data-connect#how-does).

You can use this generated SDK by importing from the package `@dataconnect/generated` as shown below. Both CommonJS and ESM imports are supported.

You can also follow the instructions from the [Data Connect documentation](https://firebase.google.com/docs/data-connect/web-sdk#set-client).

```typescript
import { getDataConnect } from 'firebase/data-connect';
import { connectorConfig } from '@dataconnect/generated';

const dataConnect = getDataConnect(connectorConfig);
```

## Connecting to the local Emulator
By default, the connector will connect to the production service.

To connect to the emulator, you can use the following code.
You can also follow the emulator instructions from the [Data Connect documentation](https://firebase.google.com/docs/data-connect/web-sdk#instrument-clients).

```typescript
import { connectDataConnectEmulator, getDataConnect } from 'firebase/data-connect';
import { connectorConfig } from '@dataconnect/generated';

const dataConnect = getDataConnect(connectorConfig);
connectDataConnectEmulator(dataConnect, 'localhost', 9399);
```

After it's initialized, you can call your Data Connect [queries](#queries) and [mutations](#mutations) from your generated SDK.

# Queries

There are two ways to execute a Data Connect Query using the generated Web SDK:
- Using a Query Reference function, which returns a `QueryRef`
  - The `QueryRef` can be used as an argument to `executeQuery()`, which will execute the Query and return a `QueryPromise`
- Using an action shortcut function, which returns a `QueryPromise`
  - Calling the action shortcut function will execute the Query and return a `QueryPromise`

The following is true for both the action shortcut function and the `QueryRef` function:
- The `QueryPromise` returned will resolve to the result of the Query once it has finished executing
- If the Query accepts arguments, both the action shortcut function and the `QueryRef` function accept a single argument: an object that contains all the required variables (and the optional variables) for the Query
- Both functions can be called with or without passing in a `DataConnect` instance as an argument. If no `DataConnect` argument is passed in, then the generated SDK will call `getDataConnect(connectorConfig)` behind the scenes for you.

Below are examples of how to use the `example` connector's generated functions to execute each query. You can also follow the examples from the [Data Connect documentation](https://firebase.google.com/docs/data-connect/web-sdk#using-queries).

## GetJobPostings
You can execute the `GetJobPostings` query using the following action shortcut function, or by calling `executeQuery()` after calling the following `QueryRef` function, both of which are defined in [dataconnect-generated/index.d.ts](./index.d.ts):
```typescript
getJobPostings(): QueryPromise<GetJobPostingsData, undefined>;

interface GetJobPostingsRef {
  ...
  /* Allow users to create refs without passing in DataConnect */
  (): QueryRef<GetJobPostingsData, undefined>;
}
export const getJobPostingsRef: GetJobPostingsRef;
```
You can also pass in a `DataConnect` instance to the action shortcut function or `QueryRef` function.
```typescript
getJobPostings(dc: DataConnect): QueryPromise<GetJobPostingsData, undefined>;

interface GetJobPostingsRef {
  ...
  (dc: DataConnect): QueryRef<GetJobPostingsData, undefined>;
}
export const getJobPostingsRef: GetJobPostingsRef;
```

If you need the name of the operation without creating a ref, you can retrieve the operation name by calling the `operationName` property on the getJobPostingsRef:
```typescript
const name = getJobPostingsRef.operationName;
console.log(name);
```

### Variables
The `GetJobPostings` query has no variables.
### Return Type
Recall that executing the `GetJobPostings` query returns a `QueryPromise` that resolves to an object with a `data` property.

The `data` property is an object of type `GetJobPostingsData`, which is defined in [dataconnect-generated/index.d.ts](./index.d.ts). It has the following fields:
```typescript
export interface GetJobPostingsData {
  jobPostings: ({
    id: UUIDString;
    title: string;
    description: string;
    location: string;
  } & JobPosting_Key)[];
}
```
### Using `GetJobPostings`'s action shortcut function

```typescript
import { getDataConnect } from 'firebase/data-connect';
import { connectorConfig, getJobPostings } from '@dataconnect/generated';


// Call the `getJobPostings()` function to execute the query.
// You can use the `await` keyword to wait for the promise to resolve.
const { data } = await getJobPostings();

// You can also pass in a `DataConnect` instance to the action shortcut function.
const dataConnect = getDataConnect(connectorConfig);
const { data } = await getJobPostings(dataConnect);

console.log(data.jobPostings);

// Or, you can use the `Promise` API.
getJobPostings().then((response) => {
  const data = response.data;
  console.log(data.jobPostings);
});
```

### Using `GetJobPostings`'s `QueryRef` function

```typescript
import { getDataConnect, executeQuery } from 'firebase/data-connect';
import { connectorConfig, getJobPostingsRef } from '@dataconnect/generated';


// Call the `getJobPostingsRef()` function to get a reference to the query.
const ref = getJobPostingsRef();

// You can also pass in a `DataConnect` instance to the `QueryRef` function.
const dataConnect = getDataConnect(connectorConfig);
const ref = getJobPostingsRef(dataConnect);

// Call `executeQuery()` on the reference to execute the query.
// You can use the `await` keyword to wait for the promise to resolve.
const { data } = await executeQuery(ref);

console.log(data.jobPostings);

// Or, you can use the `Promise` API.
executeQuery(ref).then((response) => {
  const data = response.data;
  console.log(data.jobPostings);
});
```

## GetMyApplications
You can execute the `GetMyApplications` query using the following action shortcut function, or by calling `executeQuery()` after calling the following `QueryRef` function, both of which are defined in [dataconnect-generated/index.d.ts](./index.d.ts):
```typescript
getMyApplications(): QueryPromise<GetMyApplicationsData, undefined>;

interface GetMyApplicationsRef {
  ...
  /* Allow users to create refs without passing in DataConnect */
  (): QueryRef<GetMyApplicationsData, undefined>;
}
export const getMyApplicationsRef: GetMyApplicationsRef;
```
You can also pass in a `DataConnect` instance to the action shortcut function or `QueryRef` function.
```typescript
getMyApplications(dc: DataConnect): QueryPromise<GetMyApplicationsData, undefined>;

interface GetMyApplicationsRef {
  ...
  (dc: DataConnect): QueryRef<GetMyApplicationsData, undefined>;
}
export const getMyApplicationsRef: GetMyApplicationsRef;
```

If you need the name of the operation without creating a ref, you can retrieve the operation name by calling the `operationName` property on the getMyApplicationsRef:
```typescript
const name = getMyApplicationsRef.operationName;
console.log(name);
```

### Variables
The `GetMyApplications` query has no variables.
### Return Type
Recall that executing the `GetMyApplications` query returns a `QueryPromise` that resolves to an object with a `data` property.

The `data` property is an object of type `GetMyApplicationsData`, which is defined in [dataconnect-generated/index.d.ts](./index.d.ts). It has the following fields:
```typescript
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
```
### Using `GetMyApplications`'s action shortcut function

```typescript
import { getDataConnect } from 'firebase/data-connect';
import { connectorConfig, getMyApplications } from '@dataconnect/generated';


// Call the `getMyApplications()` function to execute the query.
// You can use the `await` keyword to wait for the promise to resolve.
const { data } = await getMyApplications();

// You can also pass in a `DataConnect` instance to the action shortcut function.
const dataConnect = getDataConnect(connectorConfig);
const { data } = await getMyApplications(dataConnect);

console.log(data.applications);

// Or, you can use the `Promise` API.
getMyApplications().then((response) => {
  const data = response.data;
  console.log(data.applications);
});
```

### Using `GetMyApplications`'s `QueryRef` function

```typescript
import { getDataConnect, executeQuery } from 'firebase/data-connect';
import { connectorConfig, getMyApplicationsRef } from '@dataconnect/generated';


// Call the `getMyApplicationsRef()` function to get a reference to the query.
const ref = getMyApplicationsRef();

// You can also pass in a `DataConnect` instance to the `QueryRef` function.
const dataConnect = getDataConnect(connectorConfig);
const ref = getMyApplicationsRef(dataConnect);

// Call `executeQuery()` on the reference to execute the query.
// You can use the `await` keyword to wait for the promise to resolve.
const { data } = await executeQuery(ref);

console.log(data.applications);

// Or, you can use the `Promise` API.
executeQuery(ref).then((response) => {
  const data = response.data;
  console.log(data.applications);
});
```

# Mutations

There are two ways to execute a Data Connect Mutation using the generated Web SDK:
- Using a Mutation Reference function, which returns a `MutationRef`
  - The `MutationRef` can be used as an argument to `executeMutation()`, which will execute the Mutation and return a `MutationPromise`
- Using an action shortcut function, which returns a `MutationPromise`
  - Calling the action shortcut function will execute the Mutation and return a `MutationPromise`

The following is true for both the action shortcut function and the `MutationRef` function:
- The `MutationPromise` returned will resolve to the result of the Mutation once it has finished executing
- If the Mutation accepts arguments, both the action shortcut function and the `MutationRef` function accept a single argument: an object that contains all the required variables (and the optional variables) for the Mutation
- Both functions can be called with or without passing in a `DataConnect` instance as an argument. If no `DataConnect` argument is passed in, then the generated SDK will call `getDataConnect(connectorConfig)` behind the scenes for you.

Below are examples of how to use the `example` connector's generated functions to execute each mutation. You can also follow the examples from the [Data Connect documentation](https://firebase.google.com/docs/data-connect/web-sdk#using-mutations).

## CreateJobSeekerProfile
You can execute the `CreateJobSeekerProfile` mutation using the following action shortcut function, or by calling `executeMutation()` after calling the following `MutationRef` function, both of which are defined in [dataconnect-generated/index.d.ts](./index.d.ts):
```typescript
createJobSeekerProfile(vars: CreateJobSeekerProfileVariables): MutationPromise<CreateJobSeekerProfileData, CreateJobSeekerProfileVariables>;

interface CreateJobSeekerProfileRef {
  ...
  /* Allow users to create refs without passing in DataConnect */
  (vars: CreateJobSeekerProfileVariables): MutationRef<CreateJobSeekerProfileData, CreateJobSeekerProfileVariables>;
}
export const createJobSeekerProfileRef: CreateJobSeekerProfileRef;
```
You can also pass in a `DataConnect` instance to the action shortcut function or `MutationRef` function.
```typescript
createJobSeekerProfile(dc: DataConnect, vars: CreateJobSeekerProfileVariables): MutationPromise<CreateJobSeekerProfileData, CreateJobSeekerProfileVariables>;

interface CreateJobSeekerProfileRef {
  ...
  (dc: DataConnect, vars: CreateJobSeekerProfileVariables): MutationRef<CreateJobSeekerProfileData, CreateJobSeekerProfileVariables>;
}
export const createJobSeekerProfileRef: CreateJobSeekerProfileRef;
```

If you need the name of the operation without creating a ref, you can retrieve the operation name by calling the `operationName` property on the createJobSeekerProfileRef:
```typescript
const name = createJobSeekerProfileRef.operationName;
console.log(name);
```

### Variables
The `CreateJobSeekerProfile` mutation requires an argument of type `CreateJobSeekerProfileVariables`, which is defined in [dataconnect-generated/index.d.ts](./index.d.ts). It has the following fields:

```typescript
export interface CreateJobSeekerProfileVariables {
  userId: UUIDString;
  contactEmail: string;
  firstName: string;
  headline: string;
  lastName: string;
}
```
### Return Type
Recall that executing the `CreateJobSeekerProfile` mutation returns a `MutationPromise` that resolves to an object with a `data` property.

The `data` property is an object of type `CreateJobSeekerProfileData`, which is defined in [dataconnect-generated/index.d.ts](./index.d.ts). It has the following fields:
```typescript
export interface CreateJobSeekerProfileData {
  jobSeekerProfile_insert: JobSeekerProfile_Key;
}
```
### Using `CreateJobSeekerProfile`'s action shortcut function

```typescript
import { getDataConnect } from 'firebase/data-connect';
import { connectorConfig, createJobSeekerProfile, CreateJobSeekerProfileVariables } from '@dataconnect/generated';

// The `CreateJobSeekerProfile` mutation requires an argument of type `CreateJobSeekerProfileVariables`:
const createJobSeekerProfileVars: CreateJobSeekerProfileVariables = {
  userId: ..., 
  contactEmail: ..., 
  firstName: ..., 
  headline: ..., 
  lastName: ..., 
};

// Call the `createJobSeekerProfile()` function to execute the mutation.
// You can use the `await` keyword to wait for the promise to resolve.
const { data } = await createJobSeekerProfile(createJobSeekerProfileVars);
// Variables can be defined inline as well.
const { data } = await createJobSeekerProfile({ userId: ..., contactEmail: ..., firstName: ..., headline: ..., lastName: ..., });

// You can also pass in a `DataConnect` instance to the action shortcut function.
const dataConnect = getDataConnect(connectorConfig);
const { data } = await createJobSeekerProfile(dataConnect, createJobSeekerProfileVars);

console.log(data.jobSeekerProfile_insert);

// Or, you can use the `Promise` API.
createJobSeekerProfile(createJobSeekerProfileVars).then((response) => {
  const data = response.data;
  console.log(data.jobSeekerProfile_insert);
});
```

### Using `CreateJobSeekerProfile`'s `MutationRef` function

```typescript
import { getDataConnect, executeMutation } from 'firebase/data-connect';
import { connectorConfig, createJobSeekerProfileRef, CreateJobSeekerProfileVariables } from '@dataconnect/generated';

// The `CreateJobSeekerProfile` mutation requires an argument of type `CreateJobSeekerProfileVariables`:
const createJobSeekerProfileVars: CreateJobSeekerProfileVariables = {
  userId: ..., 
  contactEmail: ..., 
  firstName: ..., 
  headline: ..., 
  lastName: ..., 
};

// Call the `createJobSeekerProfileRef()` function to get a reference to the mutation.
const ref = createJobSeekerProfileRef(createJobSeekerProfileVars);
// Variables can be defined inline as well.
const ref = createJobSeekerProfileRef({ userId: ..., contactEmail: ..., firstName: ..., headline: ..., lastName: ..., });

// You can also pass in a `DataConnect` instance to the `MutationRef` function.
const dataConnect = getDataConnect(connectorConfig);
const ref = createJobSeekerProfileRef(dataConnect, createJobSeekerProfileVars);

// Call `executeMutation()` on the reference to execute the mutation.
// You can use the `await` keyword to wait for the promise to resolve.
const { data } = await executeMutation(ref);

console.log(data.jobSeekerProfile_insert);

// Or, you can use the `Promise` API.
executeMutation(ref).then((response) => {
  const data = response.data;
  console.log(data.jobSeekerProfile_insert);
});
```

## ApplyToJob
You can execute the `ApplyToJob` mutation using the following action shortcut function, or by calling `executeMutation()` after calling the following `MutationRef` function, both of which are defined in [dataconnect-generated/index.d.ts](./index.d.ts):
```typescript
applyToJob(vars: ApplyToJobVariables): MutationPromise<ApplyToJobData, ApplyToJobVariables>;

interface ApplyToJobRef {
  ...
  /* Allow users to create refs without passing in DataConnect */
  (vars: ApplyToJobVariables): MutationRef<ApplyToJobData, ApplyToJobVariables>;
}
export const applyToJobRef: ApplyToJobRef;
```
You can also pass in a `DataConnect` instance to the action shortcut function or `MutationRef` function.
```typescript
applyToJob(dc: DataConnect, vars: ApplyToJobVariables): MutationPromise<ApplyToJobData, ApplyToJobVariables>;

interface ApplyToJobRef {
  ...
  (dc: DataConnect, vars: ApplyToJobVariables): MutationRef<ApplyToJobData, ApplyToJobVariables>;
}
export const applyToJobRef: ApplyToJobRef;
```

If you need the name of the operation without creating a ref, you can retrieve the operation name by calling the `operationName` property on the applyToJobRef:
```typescript
const name = applyToJobRef.operationName;
console.log(name);
```

### Variables
The `ApplyToJob` mutation requires an argument of type `ApplyToJobVariables`, which is defined in [dataconnect-generated/index.d.ts](./index.d.ts). It has the following fields:

```typescript
export interface ApplyToJobVariables {
  jobPostingId: UUIDString;
  jobSeekerProfileId: UUIDString;
  coverLetter?: string | null;
  resumeUrl?: string | null;
}
```
### Return Type
Recall that executing the `ApplyToJob` mutation returns a `MutationPromise` that resolves to an object with a `data` property.

The `data` property is an object of type `ApplyToJobData`, which is defined in [dataconnect-generated/index.d.ts](./index.d.ts). It has the following fields:
```typescript
export interface ApplyToJobData {
  application_insert: Application_Key;
}
```
### Using `ApplyToJob`'s action shortcut function

```typescript
import { getDataConnect } from 'firebase/data-connect';
import { connectorConfig, applyToJob, ApplyToJobVariables } from '@dataconnect/generated';

// The `ApplyToJob` mutation requires an argument of type `ApplyToJobVariables`:
const applyToJobVars: ApplyToJobVariables = {
  jobPostingId: ..., 
  jobSeekerProfileId: ..., 
  coverLetter: ..., // optional
  resumeUrl: ..., // optional
};

// Call the `applyToJob()` function to execute the mutation.
// You can use the `await` keyword to wait for the promise to resolve.
const { data } = await applyToJob(applyToJobVars);
// Variables can be defined inline as well.
const { data } = await applyToJob({ jobPostingId: ..., jobSeekerProfileId: ..., coverLetter: ..., resumeUrl: ..., });

// You can also pass in a `DataConnect` instance to the action shortcut function.
const dataConnect = getDataConnect(connectorConfig);
const { data } = await applyToJob(dataConnect, applyToJobVars);

console.log(data.application_insert);

// Or, you can use the `Promise` API.
applyToJob(applyToJobVars).then((response) => {
  const data = response.data;
  console.log(data.application_insert);
});
```

### Using `ApplyToJob`'s `MutationRef` function

```typescript
import { getDataConnect, executeMutation } from 'firebase/data-connect';
import { connectorConfig, applyToJobRef, ApplyToJobVariables } from '@dataconnect/generated';

// The `ApplyToJob` mutation requires an argument of type `ApplyToJobVariables`:
const applyToJobVars: ApplyToJobVariables = {
  jobPostingId: ..., 
  jobSeekerProfileId: ..., 
  coverLetter: ..., // optional
  resumeUrl: ..., // optional
};

// Call the `applyToJobRef()` function to get a reference to the mutation.
const ref = applyToJobRef(applyToJobVars);
// Variables can be defined inline as well.
const ref = applyToJobRef({ jobPostingId: ..., jobSeekerProfileId: ..., coverLetter: ..., resumeUrl: ..., });

// You can also pass in a `DataConnect` instance to the `MutationRef` function.
const dataConnect = getDataConnect(connectorConfig);
const ref = applyToJobRef(dataConnect, applyToJobVars);

// Call `executeMutation()` on the reference to execute the mutation.
// You can use the `await` keyword to wait for the promise to resolve.
const { data } = await executeMutation(ref);

console.log(data.application_insert);

// Or, you can use the `Promise` API.
executeMutation(ref).then((response) => {
  const data = response.data;
  console.log(data.application_insert);
});
```

