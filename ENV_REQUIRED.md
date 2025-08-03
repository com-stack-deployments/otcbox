# Enforcing environment variables with `ENV_REQUIRED` 

## How It Works

The `ENV_REQUIRED` mechanism is a pre-deployment validation system that prevents accidental deployments with missing or incomplete configuration.

### Technical Implementation
```bash
# In compose/.values
export ENV_REQUIRED=( ENV HETZNER_API_KEY DATABASE_PASSWORD )
```

**Validation Process:**
1. Before deployment starts, the `up` script reads the `ENV_REQUIRED` array
2. For each variable listed, it checks if the variable exists in your current shell environment
3. If ANY required variable is missing or empty, deployment **stops immediately** with an error
4. Only when ALL required variables are present does deployment proceed

### Safety Mechanism
This acts as a **deployment gate** - you cannot accidentally deploy with incomplete configuration because the script will refuse to start.

---

## Use Case 1: Sensitive Data Protection

**Problem:** Accidentally committing API keys, passwords, or tokens to git repositories.

### Example: API Key Management
```bash
# BAD: Sensitive data in git-tracked file
# compose/.values (committed to git)
export HETZNER_API_KEY="htzn_abc123_secret_key_here"  # NEVER DO THIS!

# GOOD: Enforce external provision of sensitive data
# compose/.values (committed to git)
export ENV_REQUIRED=( HETZNER_API_KEY )
```

### Developer Workflow
```bash
# Developer sets secrets in their shell (not in git)
$ export HETZNER_API_KEY="htzn_abc123_secret_key_here"

# Now deployment can proceed
$ ./up
Starting deployment...

# Without secrets set:
$ ./up
Environment variable HETZNER_API_KEY has to be set to a value.
Please export a value with HETZNER_API_KEY, before you call up
Deployment aborted
```

### Security Benefits
- **Zero secrets in git** - Repository contains no sensitive data
- **Individual responsibility** - Each developer manages their own secrets
- **Audit compliance** - Clear separation between code and credentials
- **Rotation friendly** - Change secrets without touching git

---

## Use Case 2: Environment Management

**Problem:** Deploying to the wrong environment or with default values that create naming conflicts.

### Example: Multi-Stage Deployment
```bash
# compose/.values (same file for all environments)
export ENV_REQUIRED=( ENV )
export SWARMIT_INGRESS_BASE_DOMAIN="${ENV}.mycompany.com"
export DATABASE_NAME="myapp_${ENV}"
export REGISTRY_URL="registry.${ENV}.mycompany.com"
```

### Environment-Specific Deployments
```bash
# Production deployment
$ export ENV="prod"
$ ./up
# Results in:
# - prod.mycompany.com
# - database: myapp_prod
# - registry.prod.mycompany.com

# Staging deployment  
$ export ENV="staging"
$ ./up
# Results in:
# - staging.mycompany.com
# - database: myapp_staging
# - registry.staging.mycompany.com

# Development deployment
$ export ENV="dev"
$ ./up
# Results in:
# - dev.mycompany.com
# - database: myapp_dev
# - registry.dev.mycompany.com

# âŒ Forgot to set ENV
$ ./up
Environment variable ENV has to be set to a value.
Please export a value with ENV, before you call up
Deployment aborted
# This prevents deploying to ".mycompany.com" (invalid)
```

### Advanced Environment Strategy
```bash
# Different environments can require different variables
export ENV_REQUIRED=( ENV AWS_REGION )

# Production additionally requires monitoring keys
if [[ "${ENV}" == "prod" ]]; then
    export ENV_REQUIRED+=( DATADOG_API_KEY PAGERDUTY_TOKEN )
fi

# Development might need different requirements
if [[ "${ENV}" == "dev" ]]; then
    export ENV_REQUIRED+=( GITHUB_TOKEN )
fi
```