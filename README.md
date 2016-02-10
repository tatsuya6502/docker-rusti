# docker-rusti

A Docker image contains rusti, an experimental REPL for the Rust programming language

[![Docker Repository on Quay](https://quay.io/repository/tatsuya6502/rusti/status "Docker Repository on Quay")](https://quay.io/repository/tatsuya6502/rusti)


### Try It!

On a Linux machine with Docker installed, run the following commands:

```
$ docker run -it quay.io/tatsuya6502/rusti
# cd ~/rusti
# rustc --version
rustc 1.8.0-nightly (2016-MM-DD)
# cargo run
rusti=> (1..100).filter(|x| x % 19 == 3).fold(0, |acc, x| acc + x)
303
rusti=> .type Some("Hello world!".to_owned())
Some("Hello world!".to_owned()) = core::option::Option<collections::string::String>
```

### More Info about `rusti`

- [rusti on GitHub](https://github.com/murarth/rusti)
- [24 days of Rust -- Day 19 rusti](http://zsiciarz.github.io/24daysofrust/book/day19.html)

