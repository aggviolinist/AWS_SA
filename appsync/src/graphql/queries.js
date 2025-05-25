/* eslint-disable */
// this is an auto generated file. This will be overwritten

export const getAppSyncTable = /* GraphQL */ `
  query GetAppSyncTable($pk: String!) {
    getAppSyncTable(pk: $pk) {
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
export const listAppSyncTables = /* GraphQL */ `
  query ListAppSyncTables(
    $filter: TableAppSyncTableFilterInput
    $limit: Int
    $nextToken: String
  ) {
    listAppSyncTables(filter: $filter, limit: $limit, nextToken: $nextToken) {
      items {
        pk
        Name
        AdmNo
        Email
        House
        Form
        __typename
      }
      nextToken
      __typename
    }
  }
`;
