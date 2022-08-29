docker build --tag ghcr.io/ridomin/dotnet-app:arm32 -f dotnet-app/Dockerfile.pi dotnet-app
docker build --tag ghcr.io/ridomin/dotnet-app:amd64 -f dotnet-app/Dockerfile dotnet-app