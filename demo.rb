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
