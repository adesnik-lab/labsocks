function [test_server, test_client] = testTCPcomm(prt)

if nargin < 1
    port = 5000;
else
    port = prt;
end

test_server = tcpserve(port);
pause(2)
test_client = tcpcomm('localhost', port);