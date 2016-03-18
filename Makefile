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

# http://lalashan.mcmaster.ca/theobio/dushoff/index.php/HIV_couples_talk

CANFAR.abs:

public.draft.pdf: public.txt

##################################################################

## Testing new R rules (why not?)

Sources += $(wildcard *.R)

test.Rout: test.R

read.Rout: test.Rout read.R

######################################################################

## Other directories

## Talk machinery

talkdir = $(ms)/talk
subdirs += talkdir

## Images

images = $(Drop)/courses/Lecture_images
subdirs += images

images/%: images ;

images:
	$(LN) $(images) $@

## Disease data

dd/%: dd
	cd $< && $(MAKE) $*
	touch $@

dd:
	cd $(gitroot) && $(MAKE) Disease_data
	/bin/ln -s $(gitroot)/Disease_data $@

## SIR family

sir/%: sir ;
sir: 
	$(LN) $(gitroot)/SIR_model_family $@

## Old resources

##################################################################

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
-include $(ms)/newlatex.mk
-include $(ms)/talk.mk
