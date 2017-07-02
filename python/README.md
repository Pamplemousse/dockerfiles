# docker-python

Generic python runtime and tools for personnal use.

## usage

```bash
# get a python console
docker run --rm -it pamplemousse/python

# run a single script
docker run --rm -v $(pwd):/app -w /app pamplemousse/python python <script.py>
```

## python modules included

  * [grip](https://github.com/joeyespo/grip)
  * [http-prompt](https://github.com/eliangcs/http-prompt)
  * [yamllint](https://github.com/adrienverge/yamllint)
