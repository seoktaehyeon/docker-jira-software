## Highlight

- Base image is [`atlassian/jira-software:8.12`](https://hub.docker.com/r/atlassian/jira-software/tags?page=1&ordering=-name&name=8.12)
- Image digest is `8169de0e363c`
- Support `MySQL`
- Timezone is `Asia/Shanghai`
- Support `Chinese`
- Contains `SSLPoke.class`
- License tool: `getJiraLicense` and `getPluginLicense`

## How to install/start Jira Software

```bash
docker run -d -p 8080:8080 -v /jira-data:/var/atlassian/application-data/jira -it bxwill/jira-software:8.12
```

## More

- [GitHub](https://github.com/seoktaehyeon/docker-jira-software)