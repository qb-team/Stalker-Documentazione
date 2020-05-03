# ReportApi

HTTP request | Description
------------- | -------------
**GET** [**/report/organization/{organizationId}**](ReportApi.md#getTimePerUserReport) | Gets the report of total time spent per user inside the organization.


<a name="getTimePerUserReport"></a>
# **getTimePerUserReport**
> List getTimePerUserReport(organizationId)

Gets the report of total time spent per user inside the organization.

    Gets the report of total time spent by each user inside the organization. Only web-app administrators can access this end-point.

### Parameters

Name | Type | Description 
------------- | ------------- | -------------
 **organizationId** | **Long**| ID of the organization. The viewer administrator must have permissions for this organization.

### Return type

[**List**](/restapi/model/TimePerUserReport.md)

### Authorization

[bearerAuth](../documentazione.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

