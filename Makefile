# Makefile for Rcxlib

# The contents of this file are subject to the Mozilla Public License
# Version 1.0 (the "License"); you may not use this file except in
# compliance with the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
#
# Software distributed under the License is distributed on an "AS IS"
# basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
# License for the specific language governing rights and limitations
# under the License.
#
# The Original Code is Librcx code, released February 9, 1999.
#
# The Initial Developer of the Original Code is Kekoa Proudfoot.
# Portions created by Kekoa Proudfoot are Copyright (C) 1999
# Kekoa Proudfoot. All Rights Reserved.

ROOT = .
include $(ROOT)/make/shared.mk

#DIRS = lib float progs
DIRS = lib float driver progs test

all:

SUBTARGETS = all clean

$(SUBTARGETS):
	$(foreach DIR,$(DIRS),(cd $(DIR); $(MAKE) $@) &&) true

