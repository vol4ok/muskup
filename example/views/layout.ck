doctype 5
html ->
  head ->
  meta charset: "utf-8"
  title 'Test'
body ->
  '{{> head}}'
  p ->
  '{{{ yield }}}'