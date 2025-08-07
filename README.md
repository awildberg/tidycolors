# tidycolors
Using [`pillar`](https://pillar.r-lib.org) to get colorized output for \<logical>, \<integer> and \<double> tibble values on R console.

(**pillar** will already be installed alongside **dplyr**/**tidyverse** since **tibble** depends on it).

Header colors (here green) are from [colorout](https://github.com/jalvesaq/colorout) (not required for body colors).

`dplyr::starwars`

![tibble_pillar_color_starwars](https://github.com/user-attachments/assets/311b03f0-76f4-4f05-9516-ef5433b8cefc)

Also added \<logical> and \<date/datetime>

`tibble::tibble(A=runif(5), B=-2:2, C=c(T,F,T,F,F), T=Sys.time())`

![tibble_pillar_color_ext](https://github.com/user-attachments/assets/c7b767ab-664f-4a6e-8fce-674ea7b4d48a)


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
tar -xvf pillar-1.11.0_colorized.tar.gz
```
patch *shaft-simple.R* (only for 1.10.2)
```
mv shaft-simple.R pillar_1.10.2_colorized/R/
```
install colorized pillar
```
R CMD INSTALL pillar-1.11.0_colorized
# "sudo" depending on your installation location of R
```
