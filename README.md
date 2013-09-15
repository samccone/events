![](https://travis-ci.org/samccone/events.png?branch=master)

### Events

a litte fun rendering an ical-esque calendar with overlapping events


### Example
```javascript
  window.layOutDay([
        {start: 1, end: 150}
        {start: 10, end: 190}
        {start: 100, end: 280}
        {start: 10, end: 250}
        {start: 10, end: 150}
        {start: 0, end: 200}
        {start: 230, end: 300}
        {start: 0, end: 900}
        {start: 560, end: 620}
        {start: 11, end: 200}
        {start: 901, end: 990}
    ])
```

![](http://dl.dropbox.com/u/47552986/Screenshots/g5.png)

##### Compiling
```
  $ coffee -o js -wc src
  $ compass watch
```
