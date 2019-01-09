FROM microsoft/dotnet:2.2-sdk

WORKDIR /tmp

COPY app.fsproj .
RUN dotnet restore

COPY compile.sh .

RUN ["chmod", "+x", "compile.sh"]
