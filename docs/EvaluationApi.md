# Flagr::EvaluationApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_evaluation**](EvaluationApi.md#post_evaluation) | **POST** /evaluation | 


# **post_evaluation**
> EvalResult post_evaluation(body)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::EvaluationApi.new

body = Flagr::EvalContext.new # EvalContext | evalution context


begin
  result = api_instance.post_evaluation(body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling EvaluationApi->post_evaluation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EvalContext**](EvalContext.md)| evalution context | 

### Return type

[**EvalResult**](EvalResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



