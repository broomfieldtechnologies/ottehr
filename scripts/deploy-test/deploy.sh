project_id=$(jq -r '.project_id' config.json)
access_token=$(jq -r '.access_token' config.json)
provider_email=$(jq -r '.provider_email' config.json)
environment="development"

cd ../../

# sh scripts/ottehr-setup.sh $project_id $access_token $provider_email $environment

# cd packages/telemed-intake/zambdas
# pnpm run deploy-zambdas $environment
# pnpm run setup-zapehr-secrets $environment

# cd ../../../

cd packages/telemed-ehr/zambdas
# pnpm run deploy-zambdas $environment
pnpm run setup-zapehr-secrets $environment