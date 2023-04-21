classdef tcpserve < tcpReadWriteMixin
    properties
        port
    end
    
    methods
        function obj = tcpserve(port)
            % constructor method with port
            disp('Starting TCP server...')
            if nargin < 1
                obj.port = 5000;
                disp(['Using default port: ' num2str(obj.port)])
            else
                obj.port = port;
                disp(['Using port: ' num2str(obj.port)])
            end
            
            obj.sock = tcpserver(obj.port);
        end
        
%         function quit(obj)
%             fclose(obj.connection);
%         end
        
    end
end