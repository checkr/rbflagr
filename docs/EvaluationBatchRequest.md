# Flagr::EvaluationBatchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entities** | [**Array&lt;EvaluationEntity&gt;**](EvaluationEntity.md) |  | 
**enable_debug** | **BOOLEAN** |  | [optional] 
**flag_i_ds** | **Array&lt;Integer&gt;** | flagIDs | [optional] 
**flag_keys** | **Array&lt;String&gt;** | flagKeys. Either flagIDs, flagKeys or flagTags works. If pass in multiples, Flagr may return duplicate results. | [optional] 
**flag_tags** | **Array&lt;String&gt;** | flagTags. Either flagIDs, flagKeys or flagTags works. If pass in multiples, Flagr may return duplicate results. | [optional] 


