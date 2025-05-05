# tidycolors
Using [`pillar`](https://pillar.r-lib.org) to get \<integer> and \<double> values within a tibble colorized on R console.

(**pillar** will already be installed alongside **dplyr**/**tidyverse** since **tibble** depends on it).

Header colors are from [colorout](https://github.com/jalvesaq/colorout) (not required for body colors).

`dplyr::starwars`

![tibble_pillar_color_starwars](https://github.com/user-attachments/assets/311b03f0-76f4-4f05-9516-ef5433b8cefc)

`tibble::tibble(runif(5), -2:2)`

![tibble_pillar_color_ext](https://github.com/user-attachments/assets/6514f452-98c4-465c-a574-6d039f00dfb0)

Note, leading zeros of floats are zero-formatted. For now this is considered a feature. May change in the future.

<hr>

## Pre-install
```
install.packages("dplyr")
```
will also install **tibble** and **pillar**

# Install
then change **pillar** with

```
cd to_download_dir
tar -xvf pillar_1.10.2_colorized.tar.gz
R CMD INSTALL pillar_1.10.2_colorized
# "sudo" depending on your installation location of R
```
