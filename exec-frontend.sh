docker rm -f rikkei-frontend-qa 2>/dev/null || true
docker run -d --name rikkei-frontend-qa -e API_ENDPOINT=https://qa-api.rikkei.edu.vn nginx
docker exec -it rikkei-frontend-qa bash -c 'echo $API_ENDPOINT && exec bash'
