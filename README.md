## Highlight

- Base image is [`atlassian/jira-software:8.11`](https://hub.docker.com/r/atlassian/jira-software/tags?page=1&ordering=-name&name=8.11)
- Image digest is `ebf83abf8f3c`
- Support `Chinese`
- Support `MySQL`
- Timezone is `Asia/Shanghai`
- Contains `SSLPoke.class`
- License tool: `getConfLicense` and `getPluginLicense`

## How to install/start Jira Software

```bash
docker run -d -p 8080:8080 -v /jira-data:/var/atlassian/application-data/jira -it bxwill/jira-software:8.11
```

## More

- [GitHub](https://github.com/seoktaehyeon/docker-jira-software)