classdef tcpcomm < tcpReadWriteMixin
    properties
        ip
        port
    end
    
    methods
        % constructor method with ip and port
        function obj = tcpcomm(ip, port)
            obj.ip = ip;
            obj.port = port;
            obj.sock = tcpclient(ip, port);
            disp('connection successful!')
        end
    end
        
end