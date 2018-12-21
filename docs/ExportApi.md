# Flagr::ExportApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_export_sq_lite**](ExportApi.md#get_export_sq_lite) | **GET** /export/sqlite | 


# **get_export_sq_lite**
> File get_export_sq_lite



Export sqlite3 format of the db dump, which is converted from the main database.

### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::ExportApi.new

begin
  result = api_instance.get_export_sq_lite
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling ExportApi->get_export_sq_lite: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream



