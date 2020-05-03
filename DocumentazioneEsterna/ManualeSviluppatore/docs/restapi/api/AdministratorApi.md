# AdministratorApi

HTTP request | Description
------------- | -------------
**POST** [**/administrator/bindadministrator**](AdministratorApi.md#bindAdministratorToOrganization) | Bind an already existent administrator to the organization.
**POST** [**/administrator/createadministrator**](AdministratorApi.md#createNewAdministratorInOrganization) | Creates and binds a new administrator to the organization.
**GET** [**/administrator/organization/{organizationId}**](AdministratorApi.md#getAdministratorListOfOrganization) | Returns the list of administrators of the organization.
**GET** [**/administrator/permission/{administratorId}**](AdministratorApi.md#getPermissionList) | Gets the list of permission that an administrator has permissions to view/manage/own.
**POST** [**/administrator/unbindadministrator**](AdministratorApi.md#unbindAdministratorFromOrganization) | Unbind an administrator to the organization.
**PATCH** [**/administrator/updatepermission**](AdministratorApi.md#updateAdministratorPermission) | Update the permission for an already existent administrator in the organization.


<a name="bindAdministratorToOrganization"></a>
# **bindAdministratorToOrganization**
> Permission bindAdministratorToOrganization(administratorBindingRequest)

Bind an already existent administrator to the organization.

    Bind an already existent administrator to the organization. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **administratorBindingRequest** | [**AdministratorBindingRequest**](/restapi/model/AdministratorBindingRequest.md)|  |

### Return type

[**Permission**](/restapi/model/Permission.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createNewAdministratorInOrganization"></a>
# **createNewAdministratorInOrganization**
> Permission createNewAdministratorInOrganization(administratorBindingRequest)

Creates and binds a new administrator to the organization.

    Creates and binds a new administrator to the current organization.  Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **administratorBindingRequest** | [**AdministratorBindingRequest**](/restapi/model/AdministratorBindingRequest.md)|  |

### Return type

[**Permission**](/restapi/model/Permission.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getAdministratorListOfOrganization"></a>
# **getAdministratorListOfOrganization**
> List getAdministratorListOfOrganization(organizationId)

Returns the list of administrators of the organization.

    Returns the list of administrators of the organization. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **organizationId** | **Long**| ID of an organization. The administrator must have at least owner permission to the organization.

### Return type

[**List**](/restapi/model/Permission.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPermissionList"></a>
# **getPermissionList**
> List getPermissionList(administratorId)

Gets the list of permission that an administrator has permissions to view/manage/own.

    Gets the list of organizations that an administrator has permissions to view/manage/own. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **administratorId** | **String**| ID of the administrator. It must be the same of the administratorId of the authenticated administrator.

### Return type

[**List**](/restapi/model/Permission.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="unbindAdministratorFromOrganization"></a>
# **unbindAdministratorFromOrganization**
> unbindAdministratorFromOrganization(permission)

Unbind an administrator to the organization.

    Unbind an administrator to the organization. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **permission** | [**Permission**](/restapi/model/Permission.md)|  |

### Return type

null (empty response body)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

<a name="updateAdministratorPermission"></a>
# **updateAdministratorPermission**
> Permission updateAdministratorPermission(permission)

Update the permission for an already existent administrator in the organization.

    Update the permission for an already existent administrator in the organization. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **permission** | [**Permission**](/restapi/model/Permission.md)|  |

### Return type

[**Permission**](/restapi/model/Permission.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

