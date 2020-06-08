# AuthenticationServerApi

HTTP request | Description
------------- | -------------
**POST** [**/authenticationserver/userinformation**](AuthenticationServerApi.md#getUserInfoFromAuthServer) | Gets the information on users given their identifier on the organization's authentication server.


<a name="getUserInfoFromAuthServer"></a>
## **POST** /authenticationserver/userinformation

Gets the information on users given their identifier on the organization's authentication server. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description
------------- | ------------- | -------------
 **organizationAuthenticationServerRequest** | [**OrganizationAuthenticationServerRequest**](../model/OrganizationAuthenticationServerRequest.md)|

### Return type

[**List**](../model/OrganizationAuthenticationServerInformation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

