# AuthenticationServerApi

HTTP request | Description
------------- | -------------
**POST** [**/authenticationserver/userinformation**](AuthentinticationServerApi.md#getUserInfoFromAuthServer) | Gets the information on users given their identifier on the organization's authentication server.


<a name="getUserInfoFromAuthServer"></a>
# **POST** /authenticationserver/userinformation
> List getUserInfoFromAuthServer(organizationAuthenticationServerRequest)

Gets the information on users given their identifier on the organization's authentication server. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description
------------- | ------------- | -------------
 **organizationAuthenticationServerRequest** | [**OrganizationAuthenticationServerRequest**](/restapi/model/OrganizationAuthenticationServerRequest.md)|

### Return type

[**List**](/restapi/model/OrganizationAuthenticationServerInformation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

