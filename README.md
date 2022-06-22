# Random Number Generator Between 1-10

## Files

README.md

init.sh

versions/debug.sh

versions/stable.sh

## Usage

```
mkdir ~/sketch-up
git clone https://github.com/mkemalariturk/sketch-up.git ~/sketch-up/
find ~/sketch-up -iname "*.sh" -exec chmod +x {} \;
/bin/bash ~/sketch-up/init.sh help
```

## Stable Version

Stable version can be executable by following command:
`/bin/bash ~/sketch-up/init.sh stable`

This version returns only the output between 1-10 and the result should be like

> You are executing stable version
>
> Result:  7  1  3  10  6  5  8  4  2  9

## Debug Version
Debug version can be executable by following command:
`/bin/bash ~/sketch-up/init.sh debug`

Debug version returns output between 1-10 including the array status for each loop cycle. The result should be like

> You are executing debug version
> 
> **--------------Iteration 1-----------------**
> Value of i variable        = 10
> 
> Value of an array          = 1 2 3 4 5 6 7 8 9 10
> 
> Index num of above array   = 0 1 2 3 4 5 6 7 8 9
> 
> Value of r variable        = 10
> 
> **Main Result                = 10**
> 
> Dropped array              = 1 2 3 4 5 6 7 8 9
> 
> Index num of dropped array = 0 1 2 3 4 5 6 7 8
> 
> New array Value            = 1 2 3 4 5 6 7 8 9
> 
> Index num of new array     = 0 1 2 3 4 5 6 7 8
> 
> **--------------Iteration 2-----------------**
> 
> Value of i variable        = 9
> 
> Value of an array          = 1 2 3 4 5 6 7 8 9
> 
> Index num of above array   = 0 1 2 3 4 5 6 7 8
> 
> Value of r variable        = 7
> 
> **Main Result                = 7**
> 
> Dropped array              = 1 2 3 4 5 6 8 9
> 
> Index num of dropped array = 0 1 2 3 4 5 7 8
> 
> New array Value            = 1 2 3 4 5 6 8 9
> 
> Index num of new array     = 0 1 2 3 4 5 6 7
> 
> **--------------Iteration 3-----------------** 
> Value of i variable        = 8
> 
> Value of an array          = 1 2 3 4 5 6 8 9
> 
> Index num of above array   = 0 1 2 3 4 5 6 7
> 
> Value of r variable        = 4
> 
> **Main Result                = 4**
> 
> Dropped array              = 1 2 3 5 6 8 9
> 
> Index num of dropped array = 0 1 2 4 5 6 7
> 
> New array Value            = 1 2 3 5 6 8 9
> 
> Index num of new array     = 0 1 2 3 4 5 6
> 
> **--------------Iteration 4-----------------**
> 
> Value of i variable        = 7
> 
> Value of an array          = 1 2 3 5 6 8 9
> 
> Index num of above array   = 0 1 2 3 4 5 6
> 
> Value of r variable        = 1
> 
> **Main Result                = 1**
> 
> Dropped array              = 2 3 5 6 8 9
> 
> Index num of dropped array = 1 2 3 4 5 6
> 
> New array Value            = 2 3 5 6 8 9
> 
> Index num of new array     = 0 1 2 3 4 5
> 
> .
>
> .
>
> .
>
> **--------------Iteration 10-----------------**
> 
> Value of i variable        = 1
> 
> Value of an array          = 9
> 
> Index num of above array   = 0
> 
> Value of r variable        = 1
> 
> **Main Result                = 9**
> 
> Dropped array              =
> 
> Index num of dropped array =
> 
> New array Value            =
> 
> Index num of new array     =
> 
---
## Shortest Way of Number Generator

This script could be written in one line using seq (sequence generator) and shuf (shuffles inputs) command like below:
```
seq 1 10 |shuf
```

But this way is more fun.
