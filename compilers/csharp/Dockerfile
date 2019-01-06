FROM microsoft/dotnet:2.2-sdk

WORKDIR /tmp

COPY app.csproj .
RUN dotnet restore

COPY compile.sh .

RUN ["chmod", "+x", "compile.sh"]
