echo "used languages:"

echo "Elixir:"
docker exec adzy-container sh -c "find ./lib -name '*.ex' -o -name '*.exs' | xargs wc -l | tail -1"

echo "JavaScript:"
docker exec adzy-container sh -c "find ./assets/js -name '*.js' | xargs wc -l | tail -1"

echo "CSS:"
docker exec adzy-container sh -c "find ./assets/css -name '*.css' | xargs wc -l | tail -1"

echo "SCSS:"
docker exec adzy-container sh -c "find ./assets/scss -name '*.scss' | xargs wc -l | tail -1"