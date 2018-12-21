# Flagr::Flag

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**key** | **String** | unique key representation of the flag | [optional] 
**description** | **String** |  | 
**enabled** | **BOOLEAN** |  | 
**segments** | [**Array&lt;Segment&gt;**](Segment.md) |  | [optional] 
**variants** | [**Array&lt;Variant&gt;**](Variant.md) |  | [optional] 
**data_records_enabled** | **BOOLEAN** | enabled data records will get data logging in the metrics pipeline, for example, kafka. | 
**entity_type** | **String** | it will override the entityType in the evaluation logs if it&#39;s not empty | [optional] 
**created_by** | **String** |  | [optional] 
**updated_by** | **String** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 


