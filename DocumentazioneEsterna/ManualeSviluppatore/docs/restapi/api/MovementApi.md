# MovementApi

HTTP request | Description
------------- | -------------
**POST** [**/movement/track/organization**](MovementApi.md#trackMovementInOrganization) | Tracks the user movement inside the trackingArea of an organization.
**POST** [**/movement/track/place**](MovementApi.md#trackMovementInPlace) | Tracks the user movement inside the trackingArea of a place of an organization.


<a name="trackMovementInOrganization"></a>
# **trackMovementInOrganization**
> OrganizationMovement trackMovementInOrganization(organizationMovement)

Tracks the user movement inside the trackingArea of an organization.

    Tracks the user movement inside the trackingArea of an organization.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **organizationMovement** | [**OrganizationMovement**](/restapi/model/OrganizationMovement.md)|  |

### Return type

[**OrganizationMovement**](/restapi/model/OrganizationMovement.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="trackMovementInPlace"></a>
# **trackMovementInPlace**
> PlaceMovement trackMovementInPlace(placeMovement)

Tracks the user movement inside the trackingArea of a place of an organization.

    Tracks the user movement inside the trackingArea of a place of an organization.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **placeMovement** | [**PlaceMovement**](/restapi/model/PlaceMovement.md)|  |

### Return type

[**PlaceMovement**](/restapi/model/PlaceMovement.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
