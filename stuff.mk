msrepo = https://github.com/dushoff
gitroot = ./
export ms = $(gitroot)/makestuff
Drop = ~/Dropbox

-include local.mk
-include $(gitroot)/local.mk
export ms = $(gitroot)/makestuff
-include $(ms)/os.mk

## Directories

Makefile: $(ms) $(subdirs)

$(ms):
	cd $(dir $(ms)) && git clone $(msrepo)/$(notdir $(ms)).git

$(subdirs): 
	$(MAKE) -f $(ms)/repos.mk gitroot=$(gitroot) $($@)
	-$(RM) $@
	ln -s $($@) $@

## Talk machinery

talkdir = $(ms)/talk
subdirs += talkdir

## Images

images = $(Drop)/courses/Lecture_images
subdirs += images
