# docker-latex

Dockerfile describing an image to run latex tools.

## Usage

```
docker run --rm -v $(pwd):/app -w /app pamplemousse/latex pdflatex main.tex
```
