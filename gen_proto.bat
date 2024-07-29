@echo off
rem path中需要有protoc和protoc-gen-go工具
rem 生成当前目录下的.proto文件为.pb.gp文件

rem 清理生成的文件

protoc --go_out=. push.proto
protoc --go-grpc_out=require_unimplemented_servers=false:. pitaya.proto

echo All done!
pause