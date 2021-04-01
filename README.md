#Jira Software Docker Image 

[![docker](https://img.shields.io/static/v1?style=for-the-badge&logo=docker&label=docker&message=bxwill/jira-software&color=2496ED)](https://hub.docker.com/r/bxwill/jira-software)

## Highlight

- Base image is [`atlassian/jira-software:8.12`](https://hub.docker.com/r/atlassian/jira-software/tags?page=1&ordering=-name&name=8.12)
- Support `Chinese`
- Support `MySQL`
- Support auto set JVM memory 
- Timezone is `Asia/Shanghai`
- `SSLPoke.class` under `/opt`
- Tool
  - `getJiraLicense`
  - `getPluginLicense`
  - `setMem.sh`

## How to install/start Jira Software

```bash
docker run -d -p 8080:8080 -v /jira-data:/var/atlassian/application-data/jira -it bxwill/jira-software:8.12
```

## More

- [GitHub](https://github.com/seoktaehyeon/docker-jira-software)

- use SSLPoke to check SSL
```bash
cd /opt
java SSLPoke qualitysphere.github.io 443
```
