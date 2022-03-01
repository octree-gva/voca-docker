#! /bin/bash
set -e
echo ""
echo "∙ Preparing your new decidim instance"
echo "∙ Creating new passwords for secure local env"
function password_chunk() {
    echo "$(pwgen -s -B -r\"\´\`\'\$% -y $1 1)"
}
export DB_PASSWORD="DEV-$(password_chunk 32)"
export SECRET_KEY_BASE="DEV-$(password_chunk 124)"
echo "∙ Moving templates"
envsubst \$DB_PASSWORD,\$SECRET_KEY_BASE < ./docker-compose.template.yml > ./docker-compose.yml
rm docker-compose.template.yml && rm -rf tmp

echo "✅ Instance ready"
echo ""
echo "================"
echo "Next steps:"
echo ""
echo "  1. Run docker cp <my generator container>:/home/decidim/app ./my_app"
echo "  2. cd my_app && docker-compose up -d"
echo "  3. visit http://localhost:3000"
echo ""
