FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
COPY . /app 
WORKDIR /app
EXPOSE 8082
ENV ASPNETCORE_URLS=http://*:8082
ENTRYPOINT ["dotnet", "CloudApiScoutsleiding.dll"]