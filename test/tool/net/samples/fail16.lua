-- https://www.json.org/JSON_checker/test.zip
-- JSON parsing sample test case: fail16.json
assert(false == pcall(DecodeJson, [[
[ \naked] 
]]))