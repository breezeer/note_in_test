# 学习笔记

这是一个 Jekyll 博客项目，用于记录学习笔记，随缘更新。

## 环境

需要 [Ruby](https://rubyinstaller.org/downloads/) 环境支持，并且只能使用 2.6 版本。

``` text
Ruby+Devkit 2.6.6-2 (x64)
```

安装好 Ruby 后，需要使用 Bundler 来安装和运行 Jekyll。在命令行输入以下命令安装 Bundler：

``` shell
gem install bundler
```

然后安装 Jekyll：

``` shell
bundle install
```

这里需要运行非常非常长的时间，看起来不动的时候不是卡死，只是慢。

## 运行

接着就可以在本地运行项目了：

``` shell
bundle exec jekyll serve
```

应该能看到以下的输出：

``` shell
Configuration file: D:/Code/note_in_test/_config.yml
            Source: D:/Code/note_in_test
       Destination: D:/Code/note_in_test/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
       Jekyll Feed: Generating feed for posts
   GitHub Metadata: No GitHub API authentication could be found. Some fields may be missing or have incorrect data.
                    done in 3.476 seconds.
  Please add the following to your Gemfile to avoid polling for changes:
    gem 'wdm', '>= 0.1.0' if Gem.win_platform?
 Auto-regeneration: enabled for 'D:/Code/note_in_test'
    Server address: http://127.0.0.1:4000
  Server running... press ctrl-c to stop.
```

这样就可以在浏览器查看项目了。[http://127.0.0.1:4000](http://localhost:4000)

## 贡献

Emmm…
