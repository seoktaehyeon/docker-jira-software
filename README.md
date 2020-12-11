## Highlight

- Base image is `atlassian/jira-software:8.11`
- Image digest is `cfc3c282b36c`
- Support `MySQL`
- Timezone is `Asia/Shanghai`
- Contains `SSLPoke.class`
- License tool: `getConfLicense` and `getPluginLicense`
- Support Chinese

## How to install/start Jira Software

```bash
img_tag="8.11"
docker run -d -p 8080:8080 -v /jira-data:/var/atlassian/application-data/jira -it bxwill/jira-software:${img_tag}
```