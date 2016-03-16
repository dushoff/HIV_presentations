# HIV_presentations
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: public.draft.pdf 

##################################################################

# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
include stuff.mk
# include $(ms)/perl.def

##################################################################

## Content

## Content

format_files = beamer.tmp beamer.fmt

Sources += $(wildcard *.abs *.txt)

public.draft.pdf: public.txt

# http://lalashan.mcmaster.ca/theobio/dushoff/index.php/HIV_couples_talk

CANFAR.abs:

##################################################################

## Testing new R rules (why not?)

Sources += $(wildcard *.R)

test.Rout: test.R

read.Rout: test.Rout read.R

######################################################################

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
-include $(ms)/newlatex.mk
-include $(ms)/talk.mk
