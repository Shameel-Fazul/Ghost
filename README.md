# G H Ø S T Docker Image

Docker image packaging for [GHOST](https://github.com/GhostSelfbot/Ghost) Discord Self Bot.  

> ### How To Run
> 0. RUN `docker volume create <volume name>`
> 1. RUN `docker run --name discord-selfbot --restart unless-stopped -v <volume name>:/app -it shameelfazul/ghost-discord-selfbot:latest`
> 2. Enter your discord token and exit interactive mode using `CTRL+C`.
> 3. RUN `docker start discord-selfbot`
> 4. Configurations can be edited via VIM at your volume path.
