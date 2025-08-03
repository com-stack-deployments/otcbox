<p style="padding-bottom: 0rem;"><small>ComStack <code>zero-config-box</code></small></p>
<hr style="margin: 0px; margin-bottom: .25rem; border-top: 1px solid var(--theme);"/>
<h1 style="font-weight:700;margin:.5rem">
<img style="margin:.5rem" width="48" height="48" src="https://logos.pub.deployment.center/logo/custom/company-comstack/infra-otcbox?format=svg"/>
&nbsp; otcbox
</h1>

## About
You're looking at a `zero-config-box` - one or more [docker compose projects](https://docs.docker.com/compose/gettingstarted/) that can be deployed with [Docker Compose](https://docs.docker.com/compose/).

### What `zero-config` means

Simple: **Deploy and use** (not deploy and configure).

When you deploy our boxes, everything is already set up and ready to go. All our `zero-config-boxes` are thoroughly tested before we publish them.

**An example is worth a thousand words**

When you deploy our WordPress box, you get:
- A password for instant access
- Admin login ready to go
- Skip the initial WordPress setup

You can start building your site right away, instead of starting with setting up WordPress.

But even with our `zero-config-boxes` there are some services that cannot be pre-configured because:
- Licensing rules require you to agree to terms first
- The service doesn't support automatic setup

In case such a service is included, we'll tell you exactly what steps to take after your very first deployment to finish the setup.

### Changes

You're free to customize and modify the docker compose projects wherever you need. Once you start making changes, things can get complex quickly - you'll need to know what you're doing.

That's where our optional paid support comes in: to help when your customizations get tricky.

### Community (Coming Soon)

We're building a community where users can share knowledge, tips, and experiences with our `zero-config-boxes`.

Want to know when it launches? [Leave your email address](https://coming-soon.comstack.de) and we'll let you know when the community is ready!

---


# Deployment details


## Name: otcbox

OTC Poc - This deployment provides all Serivces that are required for Project: OTC-TRAI


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



## License
The software - provided through this `zero-config-box` -  is licensed under:



- [Apache License 2.0](https://choosealicense.com/licenses/apache-2.0)
  ***used by***: `registry`
- [MIT License](None)
  ***used by***: `registry-browser` `Core Infrastructure Services - SWARM|it Platform` `HTTP Status code pages` `Traefik Proxy` `mermaidjs` `Gitea`
- [GNU General Public License v3.0](https://choosealicense.com/licenses/gpl-v3)
  ***used by***: `PlantUML`
- [GNU General Public License v2.0](https://choosealicense.com/licenses/gpl-v2)
  ***used by***: `MariaDB`

**<u>Deploying this `zero-config-box` **expresses** your agreement to all 4 licenses listed before</u>**

## Configuration

The configuration of all our `zero-config-boxes` is mainly driven by [environment variables](https://docs.docker.com/compose/how-tos/environment-variables/). So all you need to do is to adjust the values of some variables to fit your needs. 

You can safely skip this step if you are OK with the following outcome:

- All services will be deployed as subdomain of domain `example.com`
- All data-persistence happens within your working-copy (the folder where you cloned this `zero-config-box` to) 


### Environment

7 environment variables should be reviewed and are stored in file `./compose/.values`


```bash
# Define the image tag to set, when image names are calculated
# Set by: config/swarmit
export SWARMIT_IMAGES_IMAGE_TAG="swarmit-0725"
# Define service url to use for your registry
# Set by: config/swarmit
export SWARMIT_IMAGES_REGISTRY_URL="https://registry.${SWARMIT_INGRESS_BASE_DOMAIN}"
# Name of this swarmit asset
# Set by: internally/swarmit
export SWARMIT_INFRA="otcbox"
# Domain to set for deployment
# Set by: config/swarmit
export SWARMIT_INGRESS_BASE_DOMAIN="example.com"
# Email address to use for letsencrypt
# Set by: config/swarmit
export SWARMIT_INGRESS_LE_EMAIL="mail@${SWARMIT_INGRESS_BASE_DOMAIN}"
# Loglevel for Traefik
# Set by: config/swarmit
export SWARMIT_INGRESS_LOG_LEVEL="ERROR"
# Define what will be the ingress incoming port
# Set by: config/swarmit
export SWARMIT_INGRESS_PORT="443"

```


## Ingress Settings
This `zero-config-box` was created using the following settings for the integrated ingress controller. 

|Parameter|Value|Description|
|:--|:--:|:--|
|ingress-base-domain|example.com|Domain to set for deployment (changed through variable `SWARMIT_INGRESS_BASE_DOMAIN`)|
|ingress-le-enable|False|Enable cert creation using letsencrypt (otherwise, self-signed will be created and used)|



### Self-signed certificates

The integrated ingress controller is configured to use *self-signed certificates* for the domain you configure as `ingress-base-domain`.
The required certs are created for you on first deployment **only**. Check the console output closely as long as it will tell you, where to find the created `RootCA` cert, in case you want to install them on your local system or in you browser. To do so, you will have to follow the instructions for your OS or browser (or keystore).



### Service URLs

With the previously shown Ingress settings the following URLs will be accessible after your have run the deployment:
- Registry - https://registry.example.com
- Registry Browser - https://images.example.com
- Container Logs - https://logs.example.com
- Ingress (Traefik) - https://proxy.example.com/dashboard/
- PlantUML - https://plantuml.example.com
- Mermaid - https://mermaid.example.com
- Git hosting service - https://git.example.com

Only features that present a user interface and that are configured to be 'public' will have a service URL. The count of named features and the count of created service URLs differs in almost all cases.

***Hint:*** It is up to you to make the shown URLs resolvable. The easiest way would be to provide the following row in your local hosts-table `/etc/hosts`
After you have changed `SWARMIT_INGRESS_BASE_DOMAIN` in `./compose/.values` execute the following command:

```bash
cd ${COMPOSE_FOLDER}
sudo bash -c 'source ./compose/.values && echo -e "# Added by a ComStack zero-config-box\n127.0.0.1		registry.${SWARMIT_INGRESS_BASE_DOMAIN} images.${SWARMIT_INGRESS_BASE_DOMAIN} logs.${SWARMIT_INGRESS_BASE_DOMAIN} proxy.${SWARMIT_INGRESS_BASE_DOMAIN} plantuml.${SWARMIT_INGRESS_BASE_DOMAIN} mermaid.${SWARMIT_INGRESS_BASE_DOMAIN} git.${SWARMIT_INGRESS_BASE_DOMAIN} \n" >> /etc/hosts'
```

to create an entry like the following in your local hosts-table `/etc/hosts`

```
# Added by a ComStack zero-config-box
127.0.0.1		registry.example.com images.example.com logs.example.com proxy.example.com plantuml.example.com mermaid.example.com git.example.com 
```

## Persistence

All our `zero-config-boxes` store the following data:
- **volumes** - *controlled through environment variable:* `VOLUMES_FOLDER`
- **configuration files** - *controlled through environment variable:* `CONFIGS_FOLDER`
- **secrets** - *controlled through environment variable:*`SECRETS_FOLDER`

Though it seems like 3 different types of Docker objects, our `zero-config-boxes` treat them all the same.
As a `bind mounted` [docker volumes](https://docs.docker.com/engine/storage/bind-mounts/).

It is up to you to keep all mentioned environment variables the default value `COMPOSE_FOLDER` or change all to one same different folder or each individually. The type of content will appended to environment variable. So setting all three to the value `/data` will produce the following `volumes-tree`:

```bash
/data/volumes
/data/configs
/data/secrets
```

<hr style="margin: 2rem 0rem; border-top: 1px solid var(--theme);"/>

## Credentials
Each `zero-config-box` stores sensitive data in flat files, which will be bind mounted to where a container expects to find it. 
You can consider all theses files `secrets`. But in effect all files are treated like any other file you mount into a container. 

The mentioned files are created within the folder `${SECRETS_FOLDER}` from the valus stored in `./compose/.secrets`. At this point it may have become clear why you have to change the secrets (in case you want to) - **before** you trigger `sh up` for the first time.

Once the `secret files` have been created and you want to change a secret again, you will have to change `secret file`. The values from file `./compose/.secrets` are only proccessed with your first call to `sh up` To quickly find a secret file you can use the following command:
```bash
$ source "./compose/.values" && find ${SECRETS_FOLDER} -name "*.secret"` 
$ find ${SECRETS_FOLDER} -name "*.secret"
# Example output!
/tmp/otcbox/secrets/otcbox/intern/vcs/gitea-db/root.secret
/tmp/otcbox/secrets/otcbox/intern/vcs/gitea-db/user.secret
/tmp/otcbox/secrets/otcbox/intern/vcs/gitea/cicd_user.secret
/tmp/otcbox/secrets/otcbox/intern/vcs/gitea/cicd_key.secret
/tmp/otcbox/secrets/otcbox/swarmit/ingress/traefik/ingress_admin.secret
```

**Note:** For sure you need to know about the impact of changing a `secret`. A database service (for instance= will not work anymore in case you change it's `secret` after the database has been successfully initialized with the default `secret`!

> **Best-Pratice**: Change all secrets same way as you treat the file `./compose/.values`. Change it, as the first thing you do, after you have cloned this `zero-config-box`. After everything has been deployed successfully, keep `./compose/.secrets` at a safe place as long as this file contains all `secrets` to access your localy deployed services.

### Create your own credentials
In case you don't want to your password(s) to be have all the same value `comstack1234`, you may wonder how to create your own **safe** passwords. Don't worry you are all set! 

Just check the file `./compose/.secrets`. This file is used to set and provide all passwords. 

Futher the mentioned file provides a hint with each password, noted in the file. 
```bash
# SECRET: ${SEC_otcbox_SWARMIT_INGRESS_TRAEFIK_INGRESS_ADMIN}
# created with:
#
#    $ openssl passwd -apr1 comstack1234
#
# SECRET Decoded val: comstack1234
export SEC_otcbox_SWARMIT_INGRESS_TRAEFIK_INGRESS_ADMIN="\$apr1\$DwVI4.nz\$.02YBfrP9NJJOM8qoiWzc/"
# SECRET: ${SEC_otcbox_INTERN_VCS_GITEA_DB_ROOT}
# created with:
#
#    $ python -c 'from secrets import token_urlsafe; from re import sub as resub; len = 12; print(resub("-","0", token_urlsafe(len)))'
#
export SEC_otcbox_INTERN_VCS_GITEA_DB_ROOT="comstack1234"
```

Simply copy the hint you find in the comment `created with:` and paste it to your console. 

Copy the result from your console and replace the value for the secret you are changing in the file `./compose/.secrets`. 

**NOTE:** Take care of quotation. If the value contains any character(s) like `´["!","@","%","$"]`, you would have to change it/them to: `´["\!","\@","\%","\$"]`. Otherwise your shell will interpolate the values, leaving you a 'broken' secret. 

**ATTENTION:** You have to do this step before your very first deployment. You can use this method solely to initialize your password, not to change passwords that are already used in running deployment!






## Contact
Who can be contacted about this `zero-config-box`:
* [Daniel Schlieder](mailto:daniel.schlieder@computerstack.de?subject=About%20zero-config-box%20otcbox) *(Asset maintaner)*


## Our Philosophy

At ComStack, we believe: **What works well for us and our clients should ***work well for you too***!**


That's why we're sharing all our `zero-config-boxes` for free. Deploy them yourself, no charge.


<hr style="margin: 2rem 0rem; border-top: 1px solid var(--theme);"/>



**Made with ❤️ by ComStack in 🇧🇪** - Bundling and sharing docker compose projects that work for everyone.