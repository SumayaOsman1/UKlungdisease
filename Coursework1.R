#' ---
#' title: Time Series Week NNN
#' author: You
#' date: Today
#' ---

# 1. R Scratchpad ------------------------------------------------------------
install.packages("prophet")
install.packages("remotes")

remotes::install_github('facebook/prophet@*release', subdir='R')
library(prophet)
library(remotes)

df<-read.csv("C:\\Users\\Sumaya Osman\\Downloads\\Daily_Attendance.csv")
class(df)
m=prophet(Attendance.df)
ds=df$Date
y=df$X.present
Attendance.df=data.frame(
    ds=df$Date,
    y=df$X.present
)

m=prophet::prophet(Attendance.df,yearly.seasonality=TRUE,weekly.seasonality=TRUE,daily.seasonality=TRUE)
f = prophet::make_future_dataframe(m, periods=8, freq="quarter");weekly.seasonality=TRUE

p = predict(m, f)
plot(m,p)
prophet_plot_components(m, p)
p = predict(m, f)
plot(m,p)

Attendance.df=data.frame(
    ds=df$Date,
    y=df$X.present
)

m=prophet::prophet(Attendance.df,yearly.seasonality=TRUE,weekly.seasonality=TRUE,daily.seasonality=FALSE)
f = prophet::make_future_dataframe(m, periods=730, freq="day")
prophet_plot_components(m, p)
p = predict(m, f)
plot(m,p)
dyplot.prophet(m, p)

# 2. Use Sectioning ----------------------------------------------------------
#   Comment lines start with #, they are not read by R
#   If you end comment lines with space and four minus signs -
#   they will be interpreted as section headings.
#   You can add more - to visually separate sections.
#   CTRL+SHIFT+R / ⌘+SHIFT+R creates a new section and adds the hyphens.
#
#   These sections are accessible in
#     - the drop-down list on the bottom left of the scripting area,
#       ALT+SHIFT+J / ⌘+SHIFT+J brings it up
#   and
#     - the outline section on the top-right corner of the scripting area
#       CTRL+SHIFT+O / ⌘+SHIFT+O brings it up

## 2.1 Subsection -----------------------------------
#   You can also have subsections
#   RStudio does not treat them differently from sections
#   but if you add a extra #, number or spaces they will look
#   different in the outline section.
#   This makes it easier to navigate your R file
#   I use less hyphens for subsections to help visually

### 2.1.1 Subsection -------------------
#   And sub-subsections,...

# 3. Folding sections -----------------------------------------------------
#   You can fold sections by clicking on the little grey down-arrow on the left
#   of the section heading. Or hitting ALT+L/⌘+ALT+L
#   This is useful to hide sections you are not working on
#   SHIFT+ALT+L / ⌘+SHIFT+⌥+L unfolds the section
#   ALT+O / ⌘+⌥+O folds all sections
#   SHIFT+ALT+O / ⌘+SHIFT+⌥+O unfolds all sections

# 4. Etiquette ------------------------------------------------------------
#   It is a good idea (valued in any business environment) to have a certain
#   etiquette when writing code (or anything else really).
#   For instance, I write a blank line before a section heading and not after
#   You can choose your own style, but be consistent, and have the least
#   amount of random variations in your style as possible.

