<p style="padding-bottom: 0rem;"><small>ComStack <code>zero-config-box</code></small></p>
<hr style="margin: 0px; margin-bottom: 2.25rem; border-top: 1px solid var(--theme);"/>

#  <img style="margin:0rem" width="38" height="38" src="https://logos.pub.deployment.center/logo/custom/company-comstack/infra-otcbox?format=svg"/> otcbox
OTC Poc - This deployment provides all Serivces that are required for Project: OTC-TRAI


<hr style="margin: 0px; margin-bottom: 2.25rem; border: 0px;"/>

# About
You're looking at a `zero-config-box` - one or more [docker compose projects](https://docs.docker.com/compose/gettingstarted/) that can be deployed with [Docker Compose](https://docs.docker.com/compose/).

# Provides 

**10 features** (from **5** docker compose projects) 
This `zero-config-box` provides the following features:
<details>
  <summary>
   <h2> 
     <img width="22" height="22" alt="Container Registry Infrastructure - SWARM|it Platform" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/stack-images?format=svg"/>
     Container Registry & Browser
   </h2>
   <p>Private container registry infrastructure with Docker Registry backend and web-based image browser for secure container image storage and management</p>
  </summary>
  <ul>
   <li> 
    <h3> 
     <img width="18" height="18" alt="registry" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/service-registry?format=svg"/>
     <b>registry</b> - <em>Image registry</em>
    </h3>    
   </li>
   <li> 
    <h3> 
     <img width="18" height="18" alt="imagebrowser" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/service-imagebrowser?format=svg"/>
     <b>registry-browser</b> - <em>Registry browser</em>
    </h3>    
   </li>
  </ul>
</details>
<details>
  <summary>
   <h2> 
     <img width="22" height="22" alt="Core Infrastructure Services - SWARM|it Platform" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/stack-core?format=svg"/>
     Infrastructure Operations Suite
   </h2>
   <p>Essential infrastructure stack providing centralized logging, administrative dashboards, mail relay services, and branding assets for operational management</p>
  </summary>
  <ul>
   <li> 
    <h3> 
     <img width="18" height="18" alt="logs" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/service-dozzle?format=svg"/>
     <b>dozzle</b> - <em>Container log aggregator</em>
    </h3>    
   </li>
  </ul>
</details>
<details>
  <summary>
   <h2> 
     <img width="22" height="22" alt="Network Gateway Infrastructure - SWARM|it Platform" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/stack-ingress?format=svg"/>
     Network Gateway & Analytics
   </h2>
   <p>Complete ingress infrastructure stack with Traefik reverse proxy, SSL termination, custom error pages, and real-time access log analytics</p>
  </summary>
  <ul>
   <li> 
    <h3> 
     <img width="18" height="18" alt="http-code-pages" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/service-http-code-pages?format=svg"/>
     <b>HTTP Status code pages</b> - <em>HTTP Error pages</em>
    </h3>    
   </li>
   <li> 
    <h3> 
     <img width="18" height="18" alt="traefik" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/service-traefik?format=svg"/>
     <b>Traefik Proxy</b> - <em>Application proxy</em>
    </h3>    
   </li>
  </ul>
</details>
<details>
  <summary>
   <h2> 
     <img width="22" height="22" alt="Graph tools for Markdown renderer" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/stack-docu?format=svg"/>
     Documentation add-ons
   </h2>
   <p>Additional tools to extend your 'markdown content creation experience'</p>
  </summary>
  <ul>
   <li> 
    <h3> 
     <img width="18" height="18" alt="plantuml" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/service-plantuml?format=svg"/>
     <b>PlantUML</b> - <em>Diagrams from plain text</em>
    </h3>    
   </li>
   <li> 
    <h3> 
     <img width="18" height="18" alt="mermaid" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/service-mermaid?format=svg"/>
     <b>mermaidjs</b> - <em>Diagramming and charting tool</em>
    </h3>    
   </li>
  </ul>
</details>
<details>
  <summary>
   <h2> 
     <img width="22" height="22" alt="Gitea" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/stack-vcs?format=svg"/>
     Version Control with Gitea
   </h2>
   <p>Git hosting service similar to github</p>
  </summary>
  <ul>
   <li> 
    <h3> 
     <img width="18" height="18" alt="act-runner" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/service-act-runner?format=svg"/>
     <b>Gitea</b> - <em>Gitea Act Runner</em>
    </h3>    
   </li>
   <li> 
    <h3> 
     <img width="18" height="18" alt="gitea-db" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/service-mariadb?format=svg"/>
     <b>MariaDB</b> - <em>Enterprise open source database</em>
    </h3>    
   </li>
   <li> 
    <h3> 
     <img width="18" height="18" alt="gitea" src="https://logos.pub.deployment.center/logo/custom/swarmit-asset/service-gitea?format=svg"/>
     <b>Gitea</b> - <em>Git hosting service</em>
    </h3>    
   </li>
  </ul>
</details>


# Quickstart

All our `zero-config-boxes` are deployed through **3 simple steps**:

## 1. **Clone** - repo and change into the resulting directory
```bash
$ git clone <BROWSER_URL> /tmp/
$ cd /tmp/otcbox
/tmp/otcbox $
```
## 2. **Configure** - at least the minimal setup
- Set desired domain
    ```bash
    # set a domain name
    /tmp/otcbox $ MYDOMAIN="self.hosted.local"
    # replace default domain, with ${MYDOMAIN}
    /tmp/otcbox $ sed -i 's#example.com#'${MYDOMAIN}'#' compose/.values
    ```
- Persist all data in /tmp/data
    ```bash
    # persist all data in /data/volumes
    /tmp/otcbox $ sed -i 's#="${COMPOSE_FOLDER}"#="/tmp/data"#' compose/.values
    ```

***Note:*** Further configuration changes can be done as described in section [Configuration](DEPLOYMENT.md#configuration)
## 3. **Run** - bring it up!
```bash
/tmp/otcbox $ sh up 
```

The default password is `comstack1234`, check the next section to find out more.

## Credentials

**IMPORTANT:** Change credentials **BEFORE** your first deployment, in case you want to use your own ones!

**All** credentials used in our `zero-config-boxes` are set to one default password: `comstack1234`.

This deployment (**otcbox**) uses the following credentials:

|Label|Username|Password|Used by service|Note|
|:--|:--:|:--:|:--|:--|
|ingress_admin|admin|comstack1234|`traefik` |used to access traefik's dashboard|
|root|root|comstack1234|`gitea-db` `gitea` |stores secret for MYSQL_ROOT_USER|
|user|user|comstack1234|`gitea-db` `gitea` |stores secret for MYSQL_USER|
|cicd_user|cicd|comstack1234|`gitea` |Local gitea user 'cicd'|
|cicd_key|None|Hidden for documentation!|`gitea` |SSH pub key for gitea user 'cicd'|


### Security Notice

For production use, you **must** change these default credentials before running your first deployment. Once services are initialized with the default passwords, changing them requires additional steps.

**Read the complete guide:** [Create your own credentials](DEPLOYMENT.md#Create-your-own-credentials) section in DEPLOYMENT.md explains:
- How to generate secure passwords  
- Which files to modify
- Why timing matters (before first deployment)
- Step-by-step password creation commands
# Licensing

By deploying this box, you agree to these licenses:



- [Apache License 2.0](https://choosealicense.com/licenses/apache-2.0)
  ***used by***: `registry`
- [MIT License](None)
  ***used by***: `registry-browser` `Core Infrastructure Services - SWARM|it Platform` `HTTP Status code pages` `Traefik Proxy` `mermaidjs` `Gitea`
- [GNU General Public License v3.0](https://choosealicense.com/licenses/gpl-v3)
  ***used by***: `PlantUML`
- [GNU General Public License v2.0](https://choosealicense.com/licenses/gpl-v2)
  ***used by***: `MariaDB`


# Documentation

Read document [Deployment](DEPLOYMENT.md) to find detailed information about `persistence`,`configuration`, `credentials` and much more


<hr style="margin: 2rem 0rem; border-top: 1px solid var(--theme);"/>



**Made with ❤️ by ComStack** - Bundling and sharing docker compose projects that work for everyone.