# FavoriteApi

HTTP request | Description
------------- | -------------
**POST** [**/favorite/addfavorite**](FavoriteApi.md#addFavoriteOrganization) | Adds a new organization to the user&#39;s favorite organization list.
**GET** [**/favorite/{userId}**](FavoriteApi.md#getFavoriteOrganizationList) | Gets the list of favorite organizations of a user.
**POST** [**/favorite/removefavorite**](FavoriteApi.md#removeFavoriteOrganization) | Removes the organization from the user&#39;s favorite organization list.


<a name="addFavoriteOrganization"></a>
# **addFavoriteOrganization**
> Favorite addFavoriteOrganization(favorite)

Adds a new organization to the user&#39;s favorite organization list.

    Adds a new organization to the user&#39;s favorite organization list. If the organization has trackingMode: authenticated, then the user account of the organization must be linked to Stalker&#39;s account. Only app users can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **favorite** | [**Favorite**](/restapi/model/Favorite.md)|  |

### Return type

[**Favorite**](/restapi/model/Favorite.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getFavoriteOrganizationList"></a>
# **getFavoriteOrganizationList**
> List getFavoriteOrganizationList(userId)

Gets the list of favorite organizations of a user.

    Gets the list of favorite organizations of a user.  Only app users can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **userId** | **String**| ID of the user. It must be the same of the userId of the authenticated user.

### Return type

[**List**](/restapi/model/Organization.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeFavoriteOrganization"></a>
# **removeFavoriteOrganization**
> removeFavoriteOrganization(favorite)

Removes the organization from the user&#39;s favorite organization list.

    Removes the organization from the user&#39;s favorite organization list. Only app users can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **favorite** | [**Favorite**](/restapi/model/Favorite.md)|  |

### Return type

null (empty response body)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

