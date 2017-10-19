# Flagr::VariantApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_variant**](VariantApi.md#create_variant) | **POST** /flags/{flagID}/variants | 
[**delete_variant**](VariantApi.md#delete_variant) | **DELETE** /flags/{flagID}/variants/{variantID} | 
[**find_variants**](VariantApi.md#find_variants) | **GET** /flags/{flagID}/variants | 
[**put_variant**](VariantApi.md#put_variant) | **PUT** /flags/{flagID}/variants/{variantID} | 


# **create_variant**
> Variant create_variant(flag_id, body)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::VariantApi.new

flag_id = 789 # Integer | numeric ID of the flag

body = Flagr::CreateVariantRequest.new # CreateVariantRequest | create a variant


begin
  result = api_instance.create_variant(flag_id, body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling VariantApi->create_variant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **body** | [**CreateVariantRequest**](CreateVariantRequest.md)| create a variant | 

### Return type

[**Variant**](Variant.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_variant**
> delete_variant(flag_id, variant_id)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::VariantApi.new

flag_id = 789 # Integer | numeric ID of the flag

variant_id = 789 # Integer | numeric ID of the variant


begin
  api_instance.delete_variant(flag_id, variant_id)
rescue Flagr::ApiError => e
  puts "Exception when calling VariantApi->delete_variant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **variant_id** | **Integer**| numeric ID of the variant | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_variants**
> Array&lt;Variant&gt; find_variants(flag_id)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::VariantApi.new

flag_id = 789 # Integer | numeric ID of the flag


begin
  result = api_instance.find_variants(flag_id)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling VariantApi->find_variants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 

### Return type

[**Array&lt;Variant&gt;**](Variant.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_variant**
> Variant put_variant(flag_id, variant_id, body)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::VariantApi.new

flag_id = 789 # Integer | numeric ID of the flag

variant_id = 789 # Integer | numeric ID of the variant

body = Flagr::PutVariantRequest.new # PutVariantRequest | update a variant


begin
  result = api_instance.put_variant(flag_id, variant_id, body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling VariantApi->put_variant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **variant_id** | **Integer**| numeric ID of the variant | 
 **body** | [**PutVariantRequest**](PutVariantRequest.md)| update a variant | 

### Return type

[**Variant**](Variant.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



