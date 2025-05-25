/* eslint-disable */
// this is an auto generated file. This will be overwritten

export const onCreateAppSyncTable = /* GraphQL */ `
  subscription OnCreateAppSyncTable(
    $pk: String
    $Name: String
    $AdmNo: Int
    $Email: AWSEmail
    $House: String
  ) {
    onCreateAppSyncTable(
      pk: $pk
      Name: $Name
      AdmNo: $AdmNo
      Email: $Email
      House: $House
    ) {
      pk
      Name
      AdmNo
      Email
      House
      Form
      __typename
    }
  }
`;
export const onUpdateAppSyncTable = /* GraphQL */ `
  subscription OnUpdateAppSyncTable(
    $pk: String
    $Name: String
    $AdmNo: Int
    $Email: AWSEmail
    $House: String
  ) {
    onUpdateAppSyncTable(
      pk: $pk
      Name: $Name
      AdmNo: $AdmNo
      Email: $Email
      House: $House
    ) {
      pk
      Name
      AdmNo
      Email
      House
      Form
      __typename
    }
  }
`;
export const onDeleteAppSyncTable = /* GraphQL */ `
  subscription OnDeleteAppSyncTable(
    $pk: String
    $Name: String
    $AdmNo: Int
    $Email: AWSEmail
    $House: String
  ) {
    onDeleteAppSyncTable(
      pk: $pk
      Name: $Name
      AdmNo: $AdmNo
      Email: $Email
      House: $House
    ) {
      pk
      Name
      AdmNo
      Email
      House
      Form
      __typename
    }
  }
`;
