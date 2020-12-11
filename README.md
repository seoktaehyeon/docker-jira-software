## Highlight

- Base image is `atlassian/jira-software:8.12`
- Image digest is `df35db94fee4`
- Support `MySQL`
- Timezone is `Asia/Shanghai`
- Contains `SSLPoke.class`
- License tool: `getJiraLicense` and `getPluginLicense`

## How to install/start Jira Software

```bash
docker run -d -p 8080:8080 -v /jira-data:/var/atlassian/application-data/jira -it bxwill/jira-software:8.12
```