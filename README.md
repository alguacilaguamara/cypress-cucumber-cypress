# cypress-cucumber-cypress
This is a dockerfile to create a container with cypress-cucumber preprocessor and cypress in the same container

Build and run the container:
```bash
docker build -t cypress-cucumber:latest .
```
```bash
docker run cypress-cucumber:latest
```

## Example of use

Execute an analysis:
```bash
docker run --rm -v <folder>:/e2e -w /e2e cypress-cucumber:latest sh -c 'npm install cypress --save-dev && xvfb-run cypress run --headless'
```

Generate report:
```bash
docker run --rm -v <folder>:/e2e -w /e2e cypress-cucumber:latest npm run Report
```
