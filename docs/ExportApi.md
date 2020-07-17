# Flagr::ExportApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_export_eval_cache_json**](ExportApi.md#get_export_eval_cache_json) | **GET** /export/eval_cache/json | 
[**get_export_sqlite**](ExportApi.md#get_export_sqlite) | **GET** /export/sqlite | 


# **get_export_eval_cache_json**
> Object get_export_eval_cache_json



Export JSON format of the eval cache dump

### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::ExportApi.new

begin
  result = api_instance.get_export_eval_cache_json
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling ExportApi->get_export_eval_cache_json: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_export_sqlite**
> File get_export_sqlite(opts)



Export sqlite3 format of the db dump, which is converted from the main database.

### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::ExportApi.new

opts = { 
  exclude_snapshots: true # BOOLEAN | export without snapshots data - useful for smaller db without snapshots 
}

begin
  result = api_instance.get_export_sqlite(opts)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling ExportApi->get_export_sqlite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exclude_snapshots** | **BOOLEAN**| export without snapshots data - useful for smaller db without snapshots  | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream



