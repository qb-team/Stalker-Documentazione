# PresenceApi

HTTP request | Description
------------- | -------------
**GET** [**/presence/organization/{organizationId}/counter**](PresenceApi.md#getOrganizationPresenceCounter) | Gets the number of people currently inside the organization&#39;s trackingArea.
**GET** [**/presence/organization/{organizationId}**](PresenceApi.md#getOrganizationPresenceList) | Gets the list of people currently inside the organization&#39;s trackingArea.
**GET** [**/presence/place/{placeId}/counter**](PresenceApi.md#getPlacePresenceCounter) | Gets the number of people currently inside the place&#39;s trackingArea.
**GET** [**/presence/place/{placeId}**](PresenceApi.md#getPlacePresenceList) | Gets the list of people currently inside the place&#39;s trackingArea.


<a name="getOrganizationPresenceCounter"></a>
# **getOrganizationPresenceCounter**
> OrganizationPresenceCounter getOrganizationPresenceCounter(organizationId)

Gets the number of people currently inside the organization&#39;s trackingArea.

    Gets the number of people currently inside the organization&#39;s trackingArea. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **organizationId** | **Long**| ID of an organization.

### Return type

[**OrganizationPresenceCounter**](/restapi/model/OrganizationPresenceCounter.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getOrganizationPresenceList"></a>
# **getOrganizationPresenceList**
> List getOrganizationPresenceList(organizationId)

Gets the list of people currently inside the organization&#39;s trackingArea.

    Gets the list of people currently inside the organization&#39;s trackingArea. The organization is required to track people with trackingMode: authenticated. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **organizationId** | **Long**| ID of an organization.

### Return type

[**List**](/restapi/model/OrganizationAccess.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPlacePresenceCounter"></a>
# **getPlacePresenceCounter**
> PlacePresenceCounter getPlacePresenceCounter(placeId)

Gets the number of people currently inside the place&#39;s trackingArea.

    Gets the number of people currently inside the place&#39;s trackingArea. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **placeId** | **Long**| ID of a place.

### Return type

[**PlacePresenceCounter**](/restapi/model/PlacePresenceCounter.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPlacePresenceList"></a>
# **getPlacePresenceList**
> List getPlacePresenceList(placeId)

Gets the list of people currently inside the place&#39;s trackingArea.

    Gets the list of people currently inside the place&#39;s trackingArea. The place is required to track people with trackingMode: authenticated. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **placeId** | **Long**| ID of a place.

### Return type

[**List**](/restapi/model/PlaceAccess.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

