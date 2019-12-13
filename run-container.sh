docker run --name=tilemill -e CORE_URL=0.0.0.0:20009 -e TILE_URL=0.0.0.0:20008 -v tilemill:/root/Documents -p 1100:22 -p 20008:20008 -p 20009:20009 -d -t tilemill:latest

