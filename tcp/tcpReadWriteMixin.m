classdef tcpReadWriteMixin < handle
    properties
        sock
    end
    methods
        function data = recv(obj)
            invar = read(obj.sock);
            data = getArrayFromByteStream(invar);
        end

        function send(obj, data)
            outvar = getByteStreamFromArray(data);
            write(obj.sock, outvar)
        end

        function data = blockingRecv(obj)
            invar = [];
            while 1
                if ~isempty(invar)
                    data = obj.recv();
                    break
                else
                    continue
                end
            end
        end
    end
end