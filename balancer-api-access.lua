local header = ngx.req.get_headers()["X-Balancer-Api-Token"]
local secret = "7EssrJVoZK3T8L"
if (header == nil) or not (type(header) == "string") or (secret == nil) or not (header == secret) then
  -- ngx.header["Content-type"] = "application/json"
  -- ngx.say('{"error":"UNAUTHORIZED"}')
  ngx.status = ngx.HTTP_UNAUTHORIZED
  ngx.say("UNAUTHORIZED")
  ngx.exit(ngx.HTTP_UNAUTHORIZED)
end