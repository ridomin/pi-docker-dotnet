FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
WORKDIR /app

# Copy everything
COPY . ./
# Restore as distinct layers
RUN dotnet restore  -r linux-musl-arm
# Build and publish a release
RUN dotnet publish -c Release -o out -r linux-musl-arm --self-contained false --no-restore

# Build runtime image
FROM mcr.microsoft.com/dotnet/runtime:6.0-alpine-arm32v7
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "dotnet-app.dll"]