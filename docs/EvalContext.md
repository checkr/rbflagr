# Flagr::EvalContext

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_id** | **String** | entityID is used to deterministically at random to evaluate the flag result. If it&#39;s empty, flagr will randomly generate one. | [optional] 
**entity_type** | **String** |  | [optional] 
**entity_context** | **Object** |  | [optional] 
**enable_debug** | **BOOLEAN** |  | [optional] 
**flag_id** | **Integer** | flagID | [optional] 
**flag_key** | **String** | flagKey. flagID or flagKey will resolve to the same flag. Either works. | [optional] 
**flag_tags** | **Array&lt;String&gt;** | flagTags. flagTags looks up flags by tag. Either works. | [optional] 


