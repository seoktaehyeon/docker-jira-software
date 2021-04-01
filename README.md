#Jira Software Docker Image 

[![docker](https://img.shields.io/static/v1?style=for-the-badge&logo=docker&label=docker&message=bxwill/jira-software&color=2496ED)](https://hub.docker.com/r/bxwill/jira-software)

## Highlight

- Base image is [`atlassian/jira-software:8.11`](https://hub.docker.com/r/atlassian/jira-software/tags?page=1&ordering=-name&name=8.11)
- Support `Chinese`
- Support `MySQL`
- Support auto set JVM memory 
- Timezone is `Asia/Shanghai`
- `SSLPoke.class` under `/opt/atlassian/tool/`
- Tool
  - `getConfLicense`
  - `getPluginLicense`
  - `setMem.sh`

## How to install/start Jira Software

```bash
docker run -d -p 8080:8080 -v /jira-data:/var/atlassian/application-data/jira -it bxwill/jira-software:8.11
```

## More

- [GitHub](https://github.com/seoktaehyeon/docker-jira-software)