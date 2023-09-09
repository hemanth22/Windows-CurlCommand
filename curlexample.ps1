Write-Host "[TASK 1] Get Command using windows curl command"
Invoke-WebRequest -Uri "http://httpbin.org/json"
Write-Host "[TASK 2] Post Command using windows curl command with json output"
$url1="https://httpbin.org/post"
$header1 = @{
    "Content-Type" = "application/json"
}
$respone1=invoke-RestMethod -Uri $url1 -Method Post -Header $header1
$respone1
Write-Host "[TASK 3] Post Command using windows curl command with body"
$url2 = "https://httpbin.org/post"
$header2 = @{
    "Content-Type" = "application/json"
}
$data2 = @{
    key1 = "value1"
    key2 = "value2"
} | ConvertTo-Json
$response2 = Invoke-RestMethod -Uri $url2 -Method Post -Body $data2 -ContentType "application/json"
$response2
Write-Host "[TASK 4] Post Command using windows curl command with header and body"
$response3 = Invoke-RestMethod -Uri $url2 -Method Post -Header $header2 -Body $data2
$response3
