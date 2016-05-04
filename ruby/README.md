# docker-ruby

Generic ruby runtime for personnal use.

## usage

```bash
# get a pry console
docker run --rm -it pamplemousse/ruby

# run a single script
docker run --rm -v $(pwd):/app -w /app pamplemousse/ruby ruby <script.rb>
```

## gems included

  * pry
  * colorize
  * awesome_print
