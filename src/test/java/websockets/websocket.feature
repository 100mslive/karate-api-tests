Feature: Test websockets

  Scenario: demo ws tests
    * def handler = function(msg){ return msg.method == 'ping'}
    And def socket = karate.webSocket('wss://qa-in2.100ms.live/v2/ws?peer=4978fa19-15bb-4071-b27e-fa0a4a625f20&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhY2Nlc3Nfa2V5IjoiNjJjNjk2YTg4YzllN2Y3Nzk2Y2Q5ZWM1Iiwicm9vbV9pZCI6IjYyYzY5N2NkOGM5ZTdmNzc5NmNkOWVjNyIsInVzZXJfaWQiOiI3MmE5M2VjOS1jNTM3LTRmMmUtOWM4NC0yZTM2YmNjZDc3ZDciLCJyb2xlIjoiaG9zdCIsImp0aSI6IjQ0MzRiMDQwLTQxNjItNDUxZS1iMzMwLWVjZDllZmQ5NTgyNSIsInR5cGUiOiJhcHAiLCJ2ZXJzaW9uIjoyLCJleHAiOjE2NTczNTA0ODN9.ECiuMp7BqWnQzIE1fqFtNt6qIg6QrF4eRA2-cOZ5mTQ&user_agent=hmsclient%2F0.2.5-alpha.1+web_Mac_OS%2F10.15.7+Chrome_103.0.0.0', handler)
    And def res2 = socket.listen(5000);
    Then print res2
