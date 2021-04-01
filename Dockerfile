FROM atlassian/jira-software:8.11
LABEL maintainer="v.stone@163.com" \
      jdbc_url="https://confluence.atlassian.com/doc/database-jdbc-drivers-171742.html" \
      agent_url="https://gitee.com/pengzhile/atlassian-agent"
ADD https://qualitysphere.github.io/objects/mysql-connector-java-5.1.49-bin.jar /opt/atlassian/jira/lib
ADD https://qualitysphere.github.io/objects/mysql-connector-java-5.1.49.jar /opt/atlassian/jira/lib
ADD https://qualitysphere.github.io/objects/atlassian-agent.jar /opt/atlassian/tool/atlassian-agent.jar
ADD https://qualitysphere.github.io/objects/SSLPoke.class /opt/atlassian/tool/SSLPoke.class
COPY tool/getJiraLicense /usr/local/bin
COPY tool/getPluginLicense /usr/local/bin
COPY tool/setMem.sh /usr/local/bin
RUN chmod +x /usr/local/bin/getJiraLicense \
    && chmod +x /usr/local/bin/getPluginLicense \
    && chmod +x /usr/local/bin/setMem.sh \
    && chmod -R 777 /opt/atlassian/tool/ \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone \
    && sed -i 's#${JAVA_OPTS}#${JAVA_OPTS} -javaagent:/opt/atlassian/tool/atlassian-agent.jar#' /opt/atlassian/jira/bin/setenv.sh \
    && sed -i "s#import os#import os\n\nos.system('setMem.sh')\n#" /entrypoint.py
ADD https://qualitysphere.github.io/objects/msyh.ttf /usr/share/fonts
RUN chmod 777 /usr/share/fonts/msyh.ttf \
    && fc-cache -fv
